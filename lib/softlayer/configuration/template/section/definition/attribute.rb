module Softlayer
  module Configuration
    class Template
      class Section
        class Definition
          class Attribute < Softlayer::Model
            autoload :Type, 'softlayer/configuration/template/section/definition/attribute/type'
            attr_accessor :value
            attr_accessor :attribute_type
            attr_accessor :configuration_definition

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :value, type: String
            end
          end
        end
      end
    end
  end
end
