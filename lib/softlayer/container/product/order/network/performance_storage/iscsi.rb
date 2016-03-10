module Softlayer
  module Container
    module Product
      class Order
        class Network
          class PerformanceStorage
            class Iscsi < Softlayer::Container::Product::Order::Network::PerformanceStorage
              attr_accessor :os_format_type

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
