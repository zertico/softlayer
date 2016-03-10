module Softlayer
  module Billing
    class Order < Softlayer::Model
      SERVICE = 'SoftLayer_Billing_Order'
      autoload :Cart, 'softlayer/billing/order/cart'
      autoload :Item, 'softlayer/billing/order/item'
      autoload :Note, 'softlayer/billing/order/note'
      autoload :Quote, 'softlayer/billing/order/quote'
      autoload :Type, 'softlayer/billing/order/type'
      attr_accessor :account_id
      attr_accessor :create_date
      attr_accessor :id
      attr_accessor :impersonating_user_record_id
      attr_accessor :modify_date
      attr_accessor :order_quote_id
      attr_accessor :order_type_id
      attr_accessor :presale_event_id
      attr_accessor :private_cloud_order_flag
      attr_accessor :status
      attr_accessor :user_record_id
      attr_accessor :core_restricted_item_count
      attr_accessor :credit_card_transaction_count
      attr_accessor :item_count
      attr_accessor :order_top_level_item_count
      attr_accessor :paypal_transaction_count
      attr_accessor :account
      attr_accessor :brand
      attr_accessor :cart
      attr_accessor :core_restricted_items
      attr_accessor :credit_card_transactions
      attr_accessor :exchange_rate
      attr_accessor :initial_invoice
      attr_accessor :items
      attr_accessor :order_approval_date
      attr_accessor :order_non_server_monthly_amount
      attr_accessor :order_server_monthly_amount
      attr_accessor :order_top_level_items
      attr_accessor :order_total_amount
      attr_accessor :order_total_one_time
      attr_accessor :order_total_one_time_amount
      attr_accessor :order_total_one_time_tax_amount
      attr_accessor :order_total_recurring
      attr_accessor :order_total_recurring_amount
      attr_accessor :order_total_recurring_tax_amount
      attr_accessor :order_total_setup_amount
      attr_accessor :order_type
      attr_accessor :paypal_transactions
      attr_accessor :presale_event
      attr_accessor :quote
      attr_accessor :referral_partner
      attr_accessor :upgrade_request_flag
      attr_accessor :user_record

      def approve_modified_order
        request(:approve_modified_order, Boolean)
      end

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def self.get_all_objects
        request(:get_all_objects, Array[Softlayer::Billing::Order])
      end

      def get_brand
        request(:get_brand, Softlayer::Brand)
      end

      def get_cart
        request(:get_cart, Softlayer::Billing::Order::Cart)
      end

      def get_core_restricted_items
        request(:get_core_restricted_items, Array[Softlayer::Billing::Order::Item])
      end

      def get_credit_card_transactions
        request(:get_credit_card_transactions, Array[Softlayer::Billing::Payment::Card::Transaction])
      end

      def get_exchange_rate
        request(:get_exchange_rate, Softlayer::Billing::Currency::ExchangeRate)
      end

      def get_initial_invoice
        request(:get_initial_invoice, Softlayer::Billing::Invoice)
      end

      def get_items
        request(:get_items, Array[Softlayer::Billing::Order::Item])
      end

      def get_object
        request(:get_object, Softlayer::Billing::Order)
      end

      def get_order_approval_date
        request(:get_order_approval_date, DateTime)
      end

      def get_order_non_server_monthly_amount
        request(:get_order_non_server_monthly_amount, Float)
      end

      def get_order_server_monthly_amount
        request(:get_order_server_monthly_amount, Float)
      end

      def self.get_order_statuses
        request(:get_order_statuses, Array[Softlayer::Container::Billing::Order::Status])
      end

      def get_order_top_level_items
        request(:get_order_top_level_items, Array[Softlayer::Billing::Order::Item])
      end

      def get_order_total_amount
        request(:get_order_total_amount, Float)
      end

      def get_order_total_one_time
        request(:get_order_total_one_time, Float)
      end

      def get_order_total_one_time_amount
        request(:get_order_total_one_time_amount, Float)
      end

      def get_order_total_one_time_tax_amount
        request(:get_order_total_one_time_tax_amount, Float)
      end

      def get_order_total_recurring
        request(:get_order_total_recurring, Float)
      end

      def get_order_total_recurring_amount
        request(:get_order_total_recurring_amount, Float)
      end

      def get_order_total_recurring_tax_amount
        request(:get_order_total_recurring_tax_amount, Float)
      end

      def get_order_total_setup_amount
        request(:get_order_total_setup_amount, Float)
      end

      def get_order_type
        request(:get_order_type, Softlayer::Billing::Order::Type)
      end

      def get_paypal_transactions
        request(:get_paypal_transactions, Array[Softlayer::Billing::Payment::PayPal::Transaction])
      end

      def get_pdf
        request(:get_pdf, Softlayer::Base64Binary)
      end

      def get_pdf_filename
        request(:get_pdf_filename, String)
      end

      def get_presale_event
        request(:get_presale_event, Softlayer::Sales::Presale::Event)
      end

      def get_quote
        request(:get_quote, Softlayer::Billing::Order::Quote)
      end

      def get_recalculated_order_container(message = nil, ignore_discounts_flag = nil)
        message = {message: message, ignore_discounts_flag: ignore_discounts_flag}
        request(:get_recalculated_order_container, Softlayer::Container::Product::Order, message)
      end

      def get_receipt
        request(:get_receipt, Softlayer::Container::Product::Order::Receipt)
      end

      def get_referral_partner
        request(:get_referral_partner, Softlayer::Account)
      end

      def get_upgrade_request_flag
        request(:get_upgrade_request_flag, Boolean)
      end

      def get_user_record
        request(:get_user_record, Softlayer::User::Customer)
      end

      def is_pending_edit_approval
        request(:is_pending_edit_approval, Boolean)
      end

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :create_date, type: DateTime
        property :id, type: Integer
        property :impersonating_user_record_id, type: Integer
        property :modify_date, type: DateTime
        property :order_quote_id, type: Integer
        property :order_type_id, type: Integer
        property :presale_event_id, type: Integer
        property :private_cloud_order_flag, type: Boolean
        property :status, type: String
        property :user_record_id, type: Integer
        property :core_restricted_item_count, type: BigDecimal
        property :credit_card_transaction_count, type: BigDecimal
        property :item_count, type: BigDecimal
        property :order_top_level_item_count, type: BigDecimal
        property :paypal_transaction_count, type: BigDecimal
        property :order_approval_date, type: DateTime
        property :order_non_server_monthly_amount, type: Float
        property :order_server_monthly_amount, type: Float
        property :order_total_amount, type: Float
        property :order_total_one_time, type: Float
        property :order_total_one_time_amount, type: Float
        property :order_total_one_time_tax_amount, type: Float
        property :order_total_recurring, type: Float
        property :order_total_recurring_amount, type: Float
        property :order_total_recurring_tax_amount, type: Float
        property :order_total_setup_amount, type: Float
        property :upgrade_request_flag, type: Boolean
      end
    end
  end
end
