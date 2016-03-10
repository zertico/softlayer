module Softlayer
  module Container
    module Product
      class Order
        class Network
          module Storage
            class Hub < Softlayer::Container::Product::Order
              autoload :Datacenter, 'softlayer/container/product/order/network/storage/hub/datacenter'

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
