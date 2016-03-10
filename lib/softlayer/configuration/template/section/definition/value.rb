module Softlayer
  module Configuration
    class Template
      class Section
        class Definition
          class Value < Softlayer::Model
            SERVICE = 'SoftLayer_Configuration_Template_Section_Definition_Value'
            attr_accessor :create_date
            attr_accessor :definition_id
            attr_accessor :modify_date
            attr_accessor :template_id
            attr_accessor :value
            attr_accessor :definition
            attr_accessor :template

            def get_definition
              request(:get_definition, Softlayer::Configuration::Template::Section::Definition)
            end

            def get_object
              request(:get_object, Softlayer::Configuration::Template::Section::Definition::Value)
            end

            def get_template
              request(:get_template, Softlayer::Configuration::Template)
            end

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :create_date, type: DateTime
              property :definition_id, type: Integer
              property :modify_date, type: DateTime
              property :template_id, type: Integer
              property :value, type: String
            end
          end
        end
      end
    end
  end
end
