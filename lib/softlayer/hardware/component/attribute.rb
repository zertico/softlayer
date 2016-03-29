module Softlayer
  class Hardware
    class Component
      class Attribute < Softlayer::Entity
        autoload :Type, 'softlayer/hardware/component/attribute/type'
        attr_accessor :hardware_component_attribute_type_id
        attr_accessor :hardware_component_id
        attr_accessor :value
        attr_accessor :hardware_component
        attr_accessor :hardware_component_attribute_type

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :hardware_component_attribute_type_id, type: Integer
          property :hardware_component_id, type: Integer
          property :value, type: String
        end
      end
    end
  end
end
