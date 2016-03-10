module Softlayer
  module Container
    module Referral
      module Partner
        class Prospect < Softlayer::Model
          attr_accessor :address1
          attr_accessor :address2
          attr_accessor :city
          attr_accessor :company_name
          attr_accessor :country
          attr_accessor :email
          attr_accessor :first_name
          attr_accessor :last_name
          attr_accessor :office_phone
          attr_accessor :postal_code
          attr_accessor :questions
          attr_accessor :responses
          attr_accessor :state
          attr_accessor :survey_id

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :address1, type: String
            property :address2, type: String
            property :city, type: String
            property :company_name, type: String
            property :country, type: String
            property :email, type: String
            property :first_name, type: String
            property :last_name, type: String
            property :office_phone, type: String
            property :postal_code, type: String
            property :state, type: String
            property :survey_id, type: String
          end
        end
      end
    end
  end
end
