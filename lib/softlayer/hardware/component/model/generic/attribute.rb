module Softlayer
  class Hardware
    class Component
      class Model
        class Generic
          class Attribute < Softlayer::Entity
            attr_accessor :value
            attr_accessor :hardware_generic_component_model

            class Representer < Softlayer::Entity::Representer
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
