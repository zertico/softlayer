module Softlayer
  module Container
    module Product
      class Order
        class Network
          class Vlans < Softlayer::Model
            attr_accessor :private_vlans
            attr_accessor :public_vlans

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
            end
          end
        end
      end
    end
  end
end
