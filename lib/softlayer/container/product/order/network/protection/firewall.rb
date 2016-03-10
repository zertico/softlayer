module Softlayer
  module Container
    module Product
      class Order
        class Network
          module Protection
            class Firewall < Softlayer::Container::Product::Order
              autoload :Dedicated, 'softlayer/container/product/order/network/protection/firewall/dedicated'

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
