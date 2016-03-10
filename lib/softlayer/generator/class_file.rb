module Softlayer
  class Generator
    class ClassFile
      def initialize(name)
        @softlayer_name = name.dup
        @methods = Softlayer::Generator::Service.new(name).representation_hash
        @name = Converter.type(name)
        @parent = Softlayer::Generator::DataType.parent_for(@softlayer_name)
        @autoload = Softlayer::Generator::DataType.autoload_for(@softlayer_name)
      end

      def generate
        content = generate_header
        content << generate_service_constant
        content << generate_autoload
        content << generate_attributes
        content << generate_methods
        content << generate_representer
        content << generate_footer
      end

      def generate_service_constant
        return "" unless File.exist?("data/#{@softlayer_name.sub(/\ASoftLayer_/, '')}.wsdl")
        steps = count_steps(@name)
        service_constant = ""
        steps.times { service_constant << "  " }
        service_constant + "SERVICE = '#{@softlayer_name}'\n"
      end

      def generate_autoload
        return "" if @autoload.nil?
        steps = count_steps(@name)
        autoload = ""
        @autoload.each do |file|
          steps.times { autoload << "  " }
          autoload << "autoload :#{file[0]}, '#{file[1]}'\n"
        end
        autoload
      end

      def generate_methods
        return "" if @methods.nil?
        methods = ""
        @methods.each_pair do |method_name, method_content|
          methods << generate_method(method_name, method_content)
          methods << "\n"
        end
        methods
      end

      def generate_header
        header = ""
        full_name = ""
        step = 0
        total_steps = @name.split("::").size
        @name.split("::").each do |class_name|
          # iteration setup
          full_name << class_name
          step.times { header << "  " }

          # add to header
          object_type = object_type(full_name)
          header << object_type + " " + class_name

          # if have a parent, inherit
          if @parent
            header << " < #{Converter.type(@parent)}" if (step == total_steps - 1)
          else
            header << " < Softlayer::Model" if (step == total_steps - 1)
          end
          header << "\n"

          # iteration teardown
          step = step + 1
          full_name << "::"
        end
        header
      end

      def generate_attributes
        attrs = ""
        steps = count_steps(@name)
        Softlayer::Generator::DataType.attributes_for(@softlayer_name).each_pair do |attribute, type|
          steps.times { attrs << "  " }
          attrs << "attr_accessor :#{attribute}\n"
        end
        attrs << "\n"
        attrs
      end

      def generate_representer
        representer = ""
        steps = count_steps(@name)
        steps.times { representer << "  " }

        if @parent
          representer << "class Representer < #{Converter.type(@parent)}::Representer\n"
        else
          representer << "class Representer < Representable::Decorator\n"
        end
        steps = steps + 1
        steps.times { representer << "  " } ; representer << "include Representable::Hash\n"
        steps.times { representer << "  " } ; representer << "include Representable::Coercion\n"
        Softlayer::Generator::DataType.attributes_for(@softlayer_name).each_pair do |attribute, type|
          representer << generate_representer_option(attribute, type, steps)
        end
        (steps - 1).times { representer << "  " }
        representer << "end\n"
        representer
      end
      
      def generate_representer_option(attribute, type, steps)
        type = get_represented_type(type)

        # Do not create relationships on representer
        if type.match(/\AArray\[/) && type.match(/\AArray\[Softlayer::/)
          ""
        elsif type.match(/\AArray\[/)
          ""
        elsif type.match(/\ASoftlayer::/)
          ""
        else
          rep = ""
          steps.times { rep << "  " }
          rep + "property :#{attribute}, type: #{type}\n"
        end
      end

      def get_represented_type(type)
        type
      end

      def generate_footer
        footer = ""
        step = count_steps(@name) - 1
        @name.split("::").each do |name|
          step.times { footer << "  " }
          footer << "end\n"
          step = step - 1
        end
        footer
      end

      def generate_method(name, hash)
        method = String.new
        count_steps(@name).times { method << "  " }

        # generate method content
        method << "def "
        method << "self." if hash[:method_scope] == :class
        method << "#{name}"
        if has_params?(hash)
          method << "("
          hash[:input].each do |param|
            method << param[:name] + " = nil, "
          end
          method.gsub!(/, \z/, '')
          method << ")\n"
        else
          method << "\n"
        end

        # method body
        (count_steps(@name) + 1).times { method << "  " }
        if hash[:input].empty?
          request_return = hash[:return]
          request_return = "nil" if request_return.nil?
          method << "request(:#{name}, #{request_return})\n"
        else
          method << "message = {"
          hash[:input].each do |param|
            method << param[:name] + ": " + param[:name] + ", "
          end
          method.gsub!(/, \z/, '')
          method << "}\n"
          (count_steps(@name) + 1).times { method << "  " }
          request_return = hash[:return]
          request_return = "nil" if request_return.nil?
          method << "request(:#{name}, #{request_return}, message)\n"
        end
        
        count_steps(@name).times { method << "  " }
        method << "end\n"
        method
      end
      
      def has_params?(hash)
        !hash[:input].empty?
      end

      def count_steps(name)
        name.split("::").size
      end

      protected
        def object_type(object)
          Softlayer::Generator::DataType.object_type(Converter.to_softlayer_name(object)).to_s
        end        
    end
  end
end
