module Softlayer
  module Container
    module Product
      class Order
        class Network
          module ContentDelivery
            class Account
              class Upgrade < Softlayer::Container::Product::Order
                attr_accessor :cdn_account_id

                class Representer < Softlayer::Container::Product::Order::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :cdn_account_id, type: String
                end
              end
            end
          end
        end
      end
    end
  end
end
