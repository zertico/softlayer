module Softlayer
  module User
    class Customer
      class Prospect
        module ServiceProvider
          class EnrollRequest < Softlayer::Entity
            SERVICE = 'SoftLayer_User_Customer_Prospect_ServiceProvider_EnrollRequest'
            attr_accessor :account_id
            attr_accessor :address1
            attr_accessor :address2
            attr_accessor :card_account_number
            attr_accessor :card_expiration_month
            attr_accessor :card_expiration_year
            attr_accessor :card_type
            attr_accessor :card_verification_number
            attr_accessor :city
            attr_accessor :company_name
            attr_accessor :company_type_id
            attr_accessor :company_url
            attr_accessor :contact_email
            attr_accessor :contact_first_name
            attr_accessor :contact_last_name
            attr_accessor :contact_phone
            attr_accessor :country
            attr_accessor :customer_prospect_id
            attr_accessor :device_fingerprint_id
            attr_accessor :email
            attr_accessor :existing_customer_flag
            attr_accessor :first_name
            attr_accessor :ibm_partner_world_id
            attr_accessor :ibm_partner_world_member_flag
            attr_accessor :last_name
            attr_accessor :master_agreement_complete_flag
            attr_accessor :office_phone
            attr_accessor :postal_code
            attr_accessor :service_provider_addendum_flag
            attr_accessor :state
            attr_accessor :survey_responses
            attr_accessor :vat_id
            attr_accessor :company_type

            # template_object
            def self.enroll(message)
              request(:enroll, Softlayer::User::Customer::Prospect::ServiceProvider::EnrollRequest, message)
            end

            def get_company_type
              request(:get_company_type, Softlayer::Catalyst::Company::Type)
            end

            def get_object
              request(:get_object, Softlayer::User::Customer::Prospect::ServiceProvider::EnrollRequest)
            end

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :account_id, type: Integer
              property :address1, type: String
              property :address2, type: String
              property :card_account_number, type: String
              property :card_expiration_month, type: String
              property :card_expiration_year, type: String
              property :card_type, type: String
              property :card_verification_number, type: String
              property :city, type: String
              property :company_name, type: String
              property :company_type_id, type: Integer
              property :company_url, type: String
              property :contact_email, type: String
              property :contact_first_name, type: String
              property :contact_last_name, type: String
              property :contact_phone, type: String
              property :country, type: String
              property :customer_prospect_id, type: Integer
              property :device_fingerprint_id, type: String
              property :email, type: String
              property :existing_customer_flag, type: Boolean
              property :first_name, type: String
              property :ibm_partner_world_id, type: String
              property :ibm_partner_world_member_flag, type: Boolean
              property :last_name, type: String
              property :master_agreement_complete_flag, type: Boolean
              property :office_phone, type: String
              property :postal_code, type: String
              property :service_provider_addendum_flag, type: Boolean
              property :state, type: String
              property :vat_id, type: String
            end
          end
        end
      end
    end
  end
end
