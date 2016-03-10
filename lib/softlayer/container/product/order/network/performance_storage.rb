module Softlayer
  module Container
    module Product
      class Order
        class Network
          class PerformanceStorage < Softlayer::Container::Product::Order
            autoload :Iscsi, 'softlayer/container/product/order/network/performance_storage/iscsi'
            autoload :Nfs, 'softlayer/container/product/order/network/performance_storage/nfs'

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
