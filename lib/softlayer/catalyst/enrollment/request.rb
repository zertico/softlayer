module Softlayer
  module Catalyst
    class Enrollment
      class Request < Softlayer::Entity
        autoload :Container, 'softlayer/catalyst/enrollment/request/container'
        attr_accessor :address1
        attr_accessor :address2
        attr_accessor :affiliate_id
        attr_accessor :agreement_complete_flag
        attr_accessor :apply_to_gep_flag
        attr_accessor :card_account_number
        attr_accessor :card_expiration_month
        attr_accessor :card_expiration_year
        attr_accessor :card_type
        attr_accessor :card_verification_number
        attr_accessor :city
        attr_accessor :company_description
        attr_accessor :company_name
        attr_accessor :company_type_id
        attr_accessor :company_url
        attr_accessor :country
        attr_accessor :current_user_choice
        attr_accessor :device_fingerprint_id
        attr_accessor :email
        attr_accessor :first_name
        attr_accessor :future_user_choice
        attr_accessor :incubator_name
        attr_accessor :investor_name
        attr_accessor :ip_address
        attr_accessor :last_name
        attr_accessor :office_phone
        attr_accessor :over_five_years_old_flag
        attr_accessor :postal_code
        attr_accessor :referral_code
        attr_accessor :revenue_over_one_million_flag
        attr_accessor :skip_catalyst_application_flag
        attr_accessor :state
        attr_accessor :vat_id
        attr_accessor :affiliate
        attr_accessor :company_type

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :address1, type: String
          property :address2, type: String
          property :affiliate_id, type: Integer
          property :agreement_complete_flag, type: Boolean
          property :apply_to_gep_flag, type: Boolean
          property :card_account_number, type: String
          property :card_expiration_month, type: String
          property :card_expiration_year, type: String
          property :card_type, type: String
          property :card_verification_number, type: String
          property :city, type: String
          property :company_description, type: String
          property :company_name, type: String
          property :company_type_id, type: Integer
          property :company_url, type: String
          property :country, type: String
          property :current_user_choice, type: Integer
          property :device_fingerprint_id, type: String
          property :email, type: String
          property :first_name, type: String
          property :future_user_choice, type: Integer
          property :incubator_name, type: String
          property :investor_name, type: String
          property :ip_address, type: String
          property :last_name, type: String
          property :office_phone, type: String
          property :over_five_years_old_flag, type: Boolean
          property :postal_code, type: String
          property :referral_code, type: String
          property :revenue_over_one_million_flag, type: Boolean
          property :skip_catalyst_application_flag, type: Boolean
          property :state, type: String
          property :vat_id, type: String
        end
      end
    end
  end
end
