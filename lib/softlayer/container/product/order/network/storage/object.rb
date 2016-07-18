module Softlayer
  module Container
    module Product
      class Order
        class Network
          module Storage
            class Object < Softlayer::Container::Product::Order

              class Representer < Softlayer::Container::Product::Order::Representer
                include Representable::Hash
                include Representable::Coercion
              end
            end
          end
        end
      end
    end
  end
end
