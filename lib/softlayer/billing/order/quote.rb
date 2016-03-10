module Softlayer
  module Billing
    class Order
      class Quote < Softlayer::Model
        SERVICE = 'SoftLayer_Billing_Order_Quote'
        attr_accessor :account_id
        attr_accessor :completed_purchase_data_id
        attr_accessor :create_date
        attr_accessor :expiration_date
        attr_accessor :id
        attr_accessor :modify_date
        attr_accessor :name
        attr_accessor :public_note
        attr_accessor :quote_key
        attr_accessor :status
        attr_accessor :orders_from_quote_count
        attr_accessor :account
        attr_accessor :order
        attr_accessor :orders_from_quote

        def self.claim(quote_key = nil, quote_id = nil)
          message = {quote_key: quote_key, quote_id: quote_id}
          request(:claim, Softlayer::Billing::Order::Quote, message)
        end

        def delete_quote
          request(:delete_quote, Softlayer::Billing::Order::Quote)
        end

        def get_account
          request(:get_account, Softlayer::Account)
        end

        def get_object
          request(:get_object, Softlayer::Billing::Order::Quote)
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
          request(:get_quote_by_quote_key, Softlayer::Billing::Order::Quote, message)
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
          request(:save_quote, Softlayer::Billing::Order::Quote)
        end

        def verify_order(order_data = nil)
          message = {order_data: order_data}
          request(:verify_order, Softlayer::Container::Product::Order, message)
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :account_id, type: Integer
          property :completed_purchase_data_id, type: Integer
          property :create_date, type: DateTime
          property :expiration_date, type: DateTime
          property :id, type: Integer
          property :modify_date, type: DateTime
          property :name, type: String
          property :public_note, type: String
          property :quote_key, type: String
          property :status, type: String
          property :orders_from_quote_count, type: BigDecimal
        end
      end
    end
  end
end
