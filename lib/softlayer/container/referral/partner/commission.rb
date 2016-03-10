module Softlayer
  module Container
    module Referral
      module Partner
        class Commission < Softlayer::Model
          attr_accessor :commission_amount
          attr_accessor :commission_rate
          attr_accessor :create_date
          attr_accessor :referral_account_id
          attr_accessor :referral_company_name
          attr_accessor :referral_partner_account_id
          attr_accessor :referral_revenue

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :commission_amount, type: Float
            property :commission_rate, type: Float
            property :create_date, type: DateTime
            property :referral_account_id, type: Integer
            property :referral_company_name, type: String
            property :referral_partner_account_id, type: Integer
            property :referral_revenue, type: Float
          end
        end
      end
    end
  end
end
