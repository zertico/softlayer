module Softlayer
  module Container
    module Product
      class Order
        class Network
          class PerformanceStorage
            class Nfs < Softlayer::Container::Product::Order::Network::PerformanceStorage

              class Representer < Softlayer::Container::Product::Order::Network::PerformanceStorage::Representer
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
