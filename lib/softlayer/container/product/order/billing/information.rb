module Softlayer
  module Container
    module Product
      class Order
        module Billing
          class Information < Softlayer::Model
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
            attr_accessor :card_account_number
            attr_accessor :card_expiration_month
            attr_accessor :card_expiration_year
            attr_accessor :credit_card_verification_number
            attr_accessor :tax_exempt
            attr_accessor :vat_id

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
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
              property :card_account_number, type: String
              property :card_expiration_month, type: Integer
              property :card_expiration_year, type: Integer
              property :credit_card_verification_number, type: String
              property :tax_exempt, type: Integer
              property :vat_id, type: String
            end
          end
        end
      end
    end
  end
end
