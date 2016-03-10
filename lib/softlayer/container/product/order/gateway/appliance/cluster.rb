module Softlayer
  module Container
    module Product
      class Order
        module Gateway
          module Appliance
            class Cluster < Softlayer::Container::Product::Order
              attr_accessor :cluster_identifier
              attr_accessor :cluster_order_type

              class Representer < Softlayer::Container::Product::Order::Representer
                include Representable::Hash
                include Representable::Coercion
                property :cluster_identifier, type: String
                property :cluster_order_type, type: String
              end
            end
          end
        end
      end
    end
  end
end
