module Softlayer
  class Hardware
    class Component
      class Model
        class Attribute
          class Type < Softlayer::Entity
            attr_accessor :description
            attr_accessor :id
            attr_accessor :key_name
            attr_accessor :name
            attr_accessor :valid_component_type_count
            attr_accessor :valid_component_types

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :description, type: String
              property :id, type: Integer
              property :key_name, type: String
              property :name, type: String
              property :valid_component_type_count, type: BigDecimal
            end
          end
        end
      end
    end
  end
end
