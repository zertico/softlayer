module Softlayer
  module Container
    module Product
      class Order
        class Network
          class LoadBalancer < Softlayer::Container::Product::Order
            autoload :Global, 'softlayer/container/product/order/network/load_balancer/global'

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
