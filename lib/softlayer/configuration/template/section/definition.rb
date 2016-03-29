module Softlayer
  module Configuration
    class Template
      class Section
        class Definition < Softlayer::Entity
          SERVICE = 'SoftLayer_Configuration_Template_Section_Definition'
          autoload :Attribute, 'softlayer/configuration/template/section/definition/attribute'
          autoload :Group, 'softlayer/configuration/template/section/definition/group'
          autoload :Type, 'softlayer/configuration/template/section/definition/type'
          autoload :Value, 'softlayer/configuration/template/section/definition/value'
          attr_accessor :create_date
          attr_accessor :description
          attr_accessor :enumeration_values
          attr_accessor :group_id
          attr_accessor :id
          attr_accessor :maximum_value
          attr_accessor :minimum_value
          attr_accessor :modify_date
          attr_accessor :name
          attr_accessor :path
          attr_accessor :require_value_flag
          attr_accessor :section_id
          attr_accessor :short_name
          attr_accessor :sort
          attr_accessor :type_id
          attr_accessor :attribute_count
          attr_accessor :attributes
          attr_accessor :default_value
          attr_accessor :group
          attr_accessor :monitoring_data_flag
          attr_accessor :section
          attr_accessor :value_type

          def get_attributes
            request(:get_attributes, Array[Softlayer::Configuration::Template::Section::Definition::Attribute])
          end

          def get_default_value
            request(:get_default_value, Softlayer::Configuration::Template::Section::Definition::Value)
          end

          def get_group
            request(:get_group, Softlayer::Configuration::Template::Section::Definition::Group)
          end

          def get_monitoring_data_flag
            request(:get_monitoring_data_flag, Boolean)
          end

          def get_object
            request(:get_object, Softlayer::Configuration::Template::Section::Definition)
          end

          def get_section
            request(:get_section, Softlayer::Configuration::Template::Section)
          end

          def get_value_type
            request(:get_value_type, Softlayer::Configuration::Template::Section::Definition::Type)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :create_date, type: DateTime
            property :description, type: String
            property :enumeration_values, type: String
            property :group_id, type: String
            property :id, type: Integer
            property :maximum_value, type: String
            property :minimum_value, type: String
            property :modify_date, type: DateTime
            property :name, type: String
            property :path, type: String
            property :require_value_flag, type: Integer
            property :section_id, type: Integer
            property :short_name, type: String
            property :sort, type: Integer
            property :type_id, type: Integer
            property :attribute_count, type: BigDecimal
            property :monitoring_data_flag, type: Boolean
          end
        end
      end
    end
  end
end
