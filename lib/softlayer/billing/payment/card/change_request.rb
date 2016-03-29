module Softlayer
  module Billing
    module Payment
      module Card
        class ChangeRequest < Softlayer::Entity
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
          attr_accessor :card_account_number
          attr_accessor :card_expiration_month
          attr_accessor :card_expiration_year
          attr_accessor :card_nickname
          attr_accessor :card_type
          attr_accessor :credit_card_verification_number
          attr_accessor :currency_short_name
          attr_accessor :device_fingerprint_id
          attr_accessor :id
          attr_accessor :notes
          attr_accessor :payment_role_id
          attr_accessor :payment_type
          attr_accessor :ticket_id
          attr_accessor :ticket_attachment_reference_count
          attr_accessor :account
          attr_accessor :authorized_credit_card_transaction
          attr_accessor :capture_credit_card_transaction
          attr_accessor :ticket_attachment_references

          class Representer < Softlayer::Entity::Representer
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
            property :card_account_last4, type: String
            property :card_account_number, type: String
            property :card_expiration_month, type: String
            property :card_expiration_year, type: String
            property :card_nickname, type: String
            property :card_type, type: String
            property :credit_card_verification_number, type: String
            property :currency_short_name, type: String
            property :device_fingerprint_id, type: String
            property :id, type: Integer
            property :notes, type: String
            property :payment_role_id, type: Integer
            property :payment_type, type: String
            property :ticket_id, type: Integer
            property :ticket_attachment_reference_count, type: BigDecimal
          end
        end
      end
    end
  end
end
