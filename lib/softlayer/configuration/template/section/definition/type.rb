module Softlayer
  module Configuration
    class Template
      class Section
        class Definition
          class Type < Softlayer::Model
            SERVICE = 'SoftLayer_Configuration_Template_Section_Definition_Type'
            attr_accessor :description
            attr_accessor :id
            attr_accessor :name

            def get_object
              request(:get_object, Softlayer::Configuration::Template::Section::Definition::Type)
            end

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :description, type: String
              property :id, type: Integer
              property :name, type: String
            end
          end
        end
      end
    end
  end
end
