module Softlayer
  module Billing
    module Payment
      module PayPal
        class Transaction < Softlayer::Billing::Payment::Transaction
          attr_accessor :account_id
          attr_accessor :address_city_name
          attr_accessor :address_country
          attr_accessor :address_name
          attr_accessor :address_postal_code
          attr_accessor :address_state_provence
          attr_accessor :address_status
          attr_accessor :address_street1
          attr_accessor :address_street2
          attr_accessor :contact_phone
          attr_accessor :create_date
          attr_accessor :exchange_rate
          attr_accessor :fee_amount
          attr_accessor :gross_amount
          attr_accessor :id
          attr_accessor :invoice_id
          attr_accessor :last_paypal_command
          attr_accessor :modify_date
          attr_accessor :order_from_ip_address
          attr_accessor :order_total
          attr_accessor :payer
          attr_accessor :payer_business
          attr_accessor :payer_country
          attr_accessor :payer_first_name
          attr_accessor :payer_id
          attr_accessor :payer_last_name
          attr_accessor :payer_status
          attr_accessor :payment_date
          attr_accessor :payment_status
          attr_accessor :payment_type
          attr_accessor :pending_reason
          attr_accessor :serialized_reply
          attr_accessor :serialized_request
          attr_accessor :settle_amount
          attr_accessor :tax_amount
          attr_accessor :token
          attr_accessor :transaction_id
          attr_accessor :transaction_type
          attr_accessor :account
          attr_accessor :order

          class Representer < Softlayer::Billing::Payment::Transaction::Representer
            include Representable::Hash
            include Representable::Coercion
            property :account_id, type: Integer
            property :address_city_name, type: String
            property :address_country, type: String
            property :address_name, type: String
            property :address_postal_code, type: String
            property :address_state_provence, type: String
            property :address_status, type: String
            property :address_street1, type: String
            property :address_street2, type: String
            property :contact_phone, type: String
            property :create_date, type: DateTime
            property :exchange_rate, type: String
            property :fee_amount, type: Float
            property :gross_amount, type: Float
            property :id, type: Integer
            property :invoice_id, type: Integer
            property :last_paypal_command, type: String
            property :modify_date, type: DateTime
            property :order_from_ip_address, type: String
            property :order_total, type: Float
            property :payer, type: String
            property :payer_business, type: String
            property :payer_country, type: String
            property :payer_first_name, type: String
            property :payer_id, type: String
            property :payer_last_name, type: String
            property :payer_status, type: String
            property :payment_date, type: DateTime
            property :payment_status, type: String
            property :payment_type, type: String
            property :pending_reason, type: String
            property :serialized_reply, type: String
            property :serialized_request, type: String
            property :settle_amount, type: Float
            property :tax_amount, type: Float
            property :token, type: String
            property :transaction_id, type: String
            property :transaction_type, type: String
          end
        end
      end
    end
  end
end
