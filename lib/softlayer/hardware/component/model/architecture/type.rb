module Softlayer
  class Hardware
    class Component
      class Model
        module Architecture
          class Type < Softlayer::Entity
            attr_accessor :id
            attr_accessor :key_name
            attr_accessor :name
            attr_accessor :parent_id
            attr_accessor :children_count
            attr_accessor :children
            attr_accessor :parent

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :id, type: Integer
              property :key_name, type: String
              property :name, type: String
              property :parent_id, type: String
              property :children_count, type: BigDecimal
            end
          end
        end
      end
    end
  end
end
