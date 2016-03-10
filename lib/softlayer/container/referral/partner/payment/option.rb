module Softlayer
  module Container
    module Referral
      module Partner
        module Payment
          class Option < Softlayer::Model
            attr_accessor :account_number
            attr_accessor :account_type
            attr_accessor :address1
            attr_accessor :address2
            attr_accessor :bank_transit_number
            attr_accessor :city
            attr_accessor :company_name
            attr_accessor :country
            attr_accessor :federal_tax_id
            attr_accessor :first_name
            attr_accessor :last_name
            attr_accessor :payment_type
            attr_accessor :paypal_email
            attr_accessor :phone_number
            attr_accessor :postal_code
            attr_accessor :state

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :account_number, type: String
              property :account_type, type: String
              property :address1, type: String
              property :address2, type: String
              property :bank_transit_number, type: String
              property :city, type: String
              property :company_name, type: String
              property :country, type: String
              property :federal_tax_id, type: String
              property :first_name, type: String
              property :last_name, type: String
              property :payment_type, type: String
              property :paypal_email, type: String
              property :phone_number, type: String
              property :postal_code, type: String
              property :state, type: String
            end
          end
        end
      end
    end
  end
end
