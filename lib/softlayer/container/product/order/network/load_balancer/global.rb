module Softlayer
  module Container
    module Product
      class Order
        class Network
          class LoadBalancer
            class Global < Softlayer::Container::Product::Order
              attr_accessor :domain
              attr_accessor :hostname

              class Representer < Softlayer::Container::Product::Order::Representer
                include Representable::Hash
                include Representable::Coercion
                property :domain, type: String
                property :hostname, type: String
              end
            end
          end
        end
      end
    end
  end
end
