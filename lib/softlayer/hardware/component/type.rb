module Softlayer
  class Hardware
    class Component
      class Type < Softlayer::Entity
        attr_accessor :id
        attr_accessor :key_name
        attr_accessor :type
        attr_accessor :type_parent_id
        attr_accessor :hardware_generic_component_model_count
        attr_accessor :hardware_generic_component_models
        attr_accessor :type_parent

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :id, type: Integer
          property :key_name, type: String
          property :type, type: String
          property :type_parent_id, type: Integer
          property :hardware_generic_component_model_count, type: BigDecimal
        end
      end
    end
  end
end
