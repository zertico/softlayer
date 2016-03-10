module Softlayer
  module Billing
    module Payment
      module Card
        class Transaction < Softlayer::Billing::Payment::Transaction
          attr_accessor :account_id
          attr_accessor :amount
          attr_accessor :billing_address_line1
          attr_accessor :billing_address_line2
          attr_accessor :billing_city
          attr_accessor :billing_country_code
          attr_accessor :billing_email
          attr_accessor :billing_name_company
          attr_accessor :billing_name_first
          attr_accessor :billing_name_last
          attr_accessor :billing_phone_fax
          attr_accessor :billing_phone_voice
          attr_accessor :billing_postal_code
          attr_accessor :billing_state
          attr_accessor :card_account_last4
          attr_accessor :card_expiration_month
          attr_accessor :card_expiration_year
          attr_accessor :card_type
          attr_accessor :create_date
          attr_accessor :id
          attr_accessor :invoice_id
          attr_accessor :modify_date
          attr_accessor :order_from_ip_address
          attr_accessor :reference_code
          attr_accessor :request_id
          attr_accessor :return_status
          attr_accessor :serialized_reply
          attr_accessor :serialized_request
          attr_accessor :account
          attr_accessor :order

          class Representer < Softlayer::Billing::Payment::Transaction::Representer
            include Representable::Hash
            include Representable::Coercion
            property :account_id, type: Integer
            property :amount, type: Float
            property :billing_address_line1, type: String
            property :billing_address_line2, type: String
            property :billing_city, type: String
            property :billing_country_code, type: String
            property :billing_email, type: String
            property :billing_name_company, type: String
            property :billing_name_first, type: String
            property :billing_name_last, type: String
            property :billing_phone_fax, type: String
            property :billing_phone_voice, type: String
            property :billing_postal_code, type: String
            property :billing_state, type: String
            property :card_account_last4, type: Integer
            property :card_expiration_month, type: Integer
            property :card_expiration_year, type: Integer
            property :card_type, type: String
            property :create_date, type: DateTime
            property :id, type: Integer
            property :invoice_id, type: Integer
            property :modify_date, type: DateTime
            property :order_from_ip_address, type: String
            property :reference_code, type: String
            property :request_id, type: String
            property :return_status, type: Integer
            property :serialized_reply, type: String
            property :serialized_request, type: String
          end
        end
      end
    end
  end
end
