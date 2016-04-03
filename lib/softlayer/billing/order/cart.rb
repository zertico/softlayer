module Softlayer
  module Billing
    class Order
      class Cart < Softlayer::Billing::Order::Quote
        SERVICE = 'SoftLayer_Billing_Order_Cart'

        # quote_key
        # quote_id
        def self.claim(message)
          request(:claim, Softlayer::Billing::Order::Cart, message)
        end

        # order_data
        def self.create_cart(message)
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

        # cart_key
        def self.get_cart_by_cart_key(message)
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

        # quote_key
        def self.get_quote_by_quote_key(message)
          request(:get_quote_by_quote_key, Softlayer::Billing::Order::Cart, message)
        end

        # order_data
        # order_being_placed_flag
        def get_recalculated_order_container(message)
          request(:get_recalculated_order_container, Softlayer::Container::Product::Order, message)
        end

        # order_data
        def place_order(message)
          request(:place_order, Softlayer::Container::Product::Order::Receipt, message)
        end

        # order_data
        def place_quote(message)
          request(:place_quote, Softlayer::Container::Product::Order, message)
        end

        def save_quote
          request(:save_quote, Softlayer::Billing::Order::Cart)
        end

        # order_data
        def update_cart(message)
          request(:update_cart, Integer, message)
        end

        # order_data
        def verify_order(message)
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
