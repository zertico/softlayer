module Softlayer
  module Billing
    class Order
      class Cart < Softlayer::Billing::Order::Quote
        SERVICE = 'SoftLayer_Billing_Order_Cart'

        def self.claim(quote_key = nil, quote_id = nil)
          message = {quote_key: quote_key, quote_id: quote_id}
          request(:claim, Softlayer::Billing::Order::Cart, message)
        end

        def self.create_cart(order_data = nil)
          message = {order_data: order_data}
          request(:create_cart, Integer, message)
        end

        def delete_cart
          request(:delete_cart, Boolean)
        end

        def delete_quote
          request(:delete_quote, Softlayer::Billing::Order::Cart)
        end

        def get_account
          request(:get_account, Softlayer::Account)
        end

        def self.get_cart_by_cart_key(cart_key = nil)
          message = {cart_key: cart_key}
          request(:get_cart_by_cart_key, Softlayer::Billing::Order::Cart, message)
        end

        def get_object
          request(:get_object, Softlayer::Billing::Order::Cart)
        end

        def get_order
          request(:get_order, Softlayer::Billing::Order)
        end

        def get_orders_from_quote
          request(:get_orders_from_quote, Array[Softlayer::Billing::Order])
        end

        def get_pdf
          request(:get_pdf, Softlayer::Base64Binary)
        end

        def self.get_quote_by_quote_key(quote_key = nil)
          message = {quote_key: quote_key}
          request(:get_quote_by_quote_key, Softlayer::Billing::Order::Cart, message)
        end

        def get_recalculated_order_container(order_data = nil, order_being_placed_flag = nil)
          message = {order_data: order_data, order_being_placed_flag: order_being_placed_flag}
          request(:get_recalculated_order_container, Softlayer::Container::Product::Order, message)
        end

        def place_order(order_data = nil)
          message = {order_data: order_data}
          request(:place_order, Softlayer::Container::Product::Order::Receipt, message)
        end

        def place_quote(order_data = nil)
          message = {order_data: order_data}
          request(:place_quote, Softlayer::Container::Product::Order, message)
        end

        def save_quote
          request(:save_quote, Softlayer::Billing::Order::Cart)
        end

        def update_cart(order_data = nil)
          message = {order_data: order_data}
          request(:update_cart, Integer, message)
        end

        def verify_order(order_data = nil)
          message = {order_data: order_data}
          request(:verify_order, Softlayer::Container::Product::Order, message)
        end

        class Representer < Softlayer::Billing::Order::Quote::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
