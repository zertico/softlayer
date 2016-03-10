module Softlayer
  module Container
    module Account
      module Payment
        module Method
          class CreditCard < Softlayer::Model
            attr_accessor :address1
            attr_accessor :address2
            attr_accessor :city
            attr_accessor :country
            attr_accessor :currency_short_name
            attr_accessor :cybersource_assigned_card_type
            attr_accessor :expire_month
            attr_accessor :expire_year
            attr_accessor :first_name
            attr_accessor :last_four_digits
            attr_accessor :last_name
            attr_accessor :nickname
            attr_accessor :payment_method_role_name
            attr_accessor :payment_type_id
            attr_accessor :payment_type_name
            attr_accessor :postal_code
            attr_accessor :state

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :address1, type: String
              property :address2, type: String
              property :city, type: String
              property :country, type: String
              property :currency_short_name, type: String
              property :cybersource_assigned_card_type, type: String
              property :expire_month, type: String
              property :expire_year, type: String
              property :first_name, type: String
              property :last_four_digits, type: String
              property :last_name, type: String
              property :nickname, type: String
              property :payment_method_role_name, type: String
              property :payment_type_id, type: String
              property :payment_type_name, type: String
              property :postal_code, type: String
              property :state, type: String
            end
          end
        end
      end
    end
  end
end
