module Softlayer
  module Container
    module Product
      class Order
        module Dns
          module Domain
            class Reseller < Softlayer::Container::Product::Order
              attr_accessor :credit_amount

              class Representer < Softlayer::Container::Product::Order::Representer
                include Representable::Hash
                include Representable::Coercion
                property :credit_amount, type: Float
              end
            end
          end
        end
      end
    end
  end
end
