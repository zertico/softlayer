module Softlayer
  module Container
    module Product
      class Order
        class Network
          module Message
            class Delivery < Softlayer::Container::Product::Order
              attr_accessor :account_password
              attr_accessor :account_username
              attr_accessor :email_address

              class Representer < Softlayer::Container::Product::Order::Representer
                include Representable::Hash
                include Representable::Coercion
                property :account_password, type: String
                property :account_username, type: String
                property :email_address, type: String
              end
            end
          end
        end
      end
    end
  end
end
