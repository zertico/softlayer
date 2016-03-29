module Softlayer
  module Container
    module Product
      class Order
        class Network
          class Vlans < Softlayer::Entity
            attr_accessor :private_vlans
            attr_accessor :public_vlans

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
            end
          end
        end
      end
    end
  end
end
