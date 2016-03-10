module Softlayer
  module Container
    module Product
      class Order
        class Network
          module ContentDelivery
            class Account < Softlayer::Container::Product::Order
              autoload :Upgrade, 'softlayer/container/product/order/network/content_delivery/account/upgrade'
              attr_accessor :cdn_account_name

              class Representer < Softlayer::Container::Product::Order::Representer
                include Representable::Hash
                include Representable::Coercion
                property :cdn_account_name, type: String
              end
            end
          end
        end
      end
    end
  end
end
