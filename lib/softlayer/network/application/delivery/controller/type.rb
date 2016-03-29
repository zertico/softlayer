module Softlayer
  class Network
    module Application
      module Delivery
        class Controller
          class Type < Softlayer::Entity
            attr_accessor :key_name
            attr_accessor :name

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :key_name, type: String
              property :name, type: String
            end
          end
        end
      end
    end
  end
end
