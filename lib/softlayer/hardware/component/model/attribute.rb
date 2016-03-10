module Softlayer
  class Hardware
    class Component
      class Model
        class Attribute < Softlayer::Model
          autoload :Type, 'softlayer/hardware/component/model/attribute/type'
          attr_accessor :attribute_type_id
          attr_accessor :hardware_component_model_id
          attr_accessor :value
          attr_accessor :hardware_component
          attr_accessor :hardware_component_attribute_type

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :attribute_type_id, type: Integer
            property :hardware_component_model_id, type: Integer
            property :value, type: String
          end
        end
      end
    end
  end
end
