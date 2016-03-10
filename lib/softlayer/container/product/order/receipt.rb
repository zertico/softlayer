module Softlayer
  module Container
    module Product
      class Order
        class Receipt < Softlayer::Model
          attr_accessor :external_payment_checkout_url
          attr_accessor :external_payment_token
          attr_accessor :order_date
          attr_accessor :order_details
          attr_accessor :order_id
          attr_accessor :paypal_checkout_url
          attr_accessor :paypal_token
          attr_accessor :placed_order
          attr_accessor :quote

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :external_payment_checkout_url, type: String
            property :external_payment_token, type: String
            property :order_date, type: DateTime
            property :order_id, type: Integer
            property :paypal_checkout_url, type: String
            property :paypal_token, type: String
          end
        end
      end
    end
  end
end
