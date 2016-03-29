module Softlayer
  module Billing
    class Info < Softlayer::Entity
      SERVICE = 'SoftLayer_Billing_Info'
      autoload :Ach, 'softlayer/billing/info/ach'
      autoload :Cycle, 'softlayer/billing/info/cycle'
      attr_accessor :account_id
      attr_accessor :anniversary_day_of_month
      attr_accessor :card_account_number
      attr_accessor :card_expiration_month
      attr_accessor :card_expiration_year
      attr_accessor :card_nickname
      attr_accessor :card_type
      attr_accessor :card_verification_number
      attr_accessor :create_date
      attr_accessor :id
      attr_accessor :last_four_payment_card_digits
      attr_accessor :last_payment_date
      attr_accessor :modify_date
      attr_accessor :payment_terms
      attr_accessor :percent_discount_onetime
      attr_accessor :percent_discount_recurring
      attr_accessor :spare_pool_amount
      attr_accessor :vat_id
      attr_accessor :ach_information_count
      attr_accessor :account
      attr_accessor :ach_information
      attr_accessor :currency
      attr_accessor :current_billing_cycle
      attr_accessor :last_bill_date
      attr_accessor :next_bill_date

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def get_ach_information
        request(:get_ach_information, Array[Softlayer::Billing::Info::Ach])
      end

      def get_currency
        request(:get_currency, Softlayer::Billing::Currency)
      end

      def get_current_billing_cycle
        request(:get_current_billing_cycle, Softlayer::Billing::Info::Cycle)
      end

      def get_last_bill_date
        request(:get_last_bill_date, DateTime)
      end

      def get_next_bill_date
        request(:get_next_bill_date, DateTime)
      end

      def get_object
        request(:get_object, Softlayer::Billing::Info)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :anniversary_day_of_month, type: Integer
        property :card_account_number, type: String
        property :card_expiration_month, type: Integer
        property :card_expiration_year, type: Integer
        property :card_nickname, type: String
        property :card_type, type: String
        property :card_verification_number, type: String
        property :create_date, type: DateTime
        property :id, type: Integer
        property :last_four_payment_card_digits, type: Integer
        property :last_payment_date, type: DateTime
        property :modify_date, type: DateTime
        property :payment_terms, type: Integer
        property :percent_discount_onetime, type: Integer
        property :percent_discount_recurring, type: Integer
        property :spare_pool_amount, type: Integer
        property :vat_id, type: String
        property :ach_information_count, type: BigDecimal
        property :last_bill_date, type: DateTime
        property :next_bill_date, type: DateTime
      end
    end
  end
end
