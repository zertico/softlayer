module Softlayer
  class Generator
    module DataType
      class << self
        @@document = nil
        @@data_types = nil
        @@all_elements = nil

        def types
          load_data_file
          return @@data_types if @@data_types
          objects = []
          @@document.css('complexType').each do |type|
            # next unless type.css('complexContent').empty?
            type_name = type.attributes["name"].value
            type_name = 'SoftLayer_Network_Storage_Iscsi_Os_Type' if type_name == 'SoftLayer_Network_Storage_Iscsi_OS_Type'
            objects << type_name
          end
          @@data_types = clean_data_types(objects)
        end

        def all_elements
          load_data_file
          return @@all_elements if @@all_elements
          @@all_elements = types.dup

          @@all_elements.each do |element|
            add_parent_for(element) unless @@all_elements.include?(parent_of(element))
          end
        end

        def add_parent_for(element)
          return true if element == "SoftLayer" || element == "PortalLoginToken" || element == "McAfee"

          unless @@all_elements.include?(parent_of(element))
            add_parent_for(parent_of(element))
            @@all_elements << parent_of(element)
          end
        end

        def parent_of(element)
          element.sub(/_[^\_]+\z/, '')
        end

        def valid_type?(type)
          return false if type.match(/ObjectFilter\z/)
          return false if type.match(/Array\z/)
          true
        end

        def clean_data_types(objects)
          objects.delete_if {|x| x.match(/ObjectFilter\z/) }
          objects.delete_if {|x| x.match(/ObjectMask\z/) }
          objects.delete_if {|x| x.match(/Array\z/) }
          %w{ authenticate resultLimit totalItems SoftLayer_Utility_ObjectFilter_Operation SoftLayer_Utility_ObjectFilter_Operation_Option SoftLayer_ObjectMask ArrayOfstring ArrayOfint ArrayOfunsignedInt json }.each do |filter|
            objects.delete(filter)
          end
          objects
        end

        def attributes_for(type)
          load_data_file
          type = 'SoftLayer_Network_Storage_Iscsi_OS_Type' if type == 'SoftLayer_Network_Storage_Iscsi_Os_Type'
          element = @@document.css("complexType[name=#{type}]")
          return [] if element.empty?
        
          # parse attributes
          attribs = {}
          element.first.css('sequence element').each do |attrib|
            name = attrib.attributes["name"].value
            type = attrib.attributes["type"].value
            attribs[name.underscore.to_sym] = Converter.type(type)
          end
          attribs
        end

        def object_type(object)
          load_data_file
          return :class if object == "SoftLayer_Network_Storage_Iscsi_Os_Type"
          return :class if types.include?(object)
          :module
        end

        def children_for(object)
          load_data_file
          types.select { |x| x.match(/\A#{object}_[a-zA-Z]+\z/) }
        end

        def parent_for(object)
          load_data_file
          element = @@document.css("complexType[name=#{object}]")
          parent = element.css('complexContent extension').first
          return nil if parent.nil?
          parent.attributes["base"].value.sub('tns:', '')
        end

        def autoload_for(element)
          load_data_file
          children = all_elements.select { |x| x.match(/\A#{element}_[^\_]+\z/) }
          autoload = []
          children.each do |child|
            class_symbol = child.sub(element+'_', '').to_sym
            class_file = process_autoload(child)
            autoload << [class_symbol, class_file]
          end
          autoload
        end

        def process_autoload(child)
          return Converter.class_name(child).underscore if child =~ /Array\z/
          Converter.type(child).underscore
        end

        private
          def load_data_file
            # @document = Wasabi.document File.read("data/types.xsd")
            return @@document if @@document
            @@document = Nokogiri::XML(File.read("data/types.xsd"))
          end

          # just to make tests faster
          def set_types(user_data_types)
            @@data_types = user_data_types
          end
        end
    end
  end
end
