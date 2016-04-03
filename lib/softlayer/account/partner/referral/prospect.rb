module Softlayer
  class Account
    module Partner
      module Referral
        class Prospect < Softlayer::User::Customer::Prospect
          SERVICE = 'SoftLayer_Account_Partner_Referral_Prospect'
          attr_accessor :company_name
          attr_accessor :email_address
          attr_accessor :first_name
          attr_accessor :id
          attr_accessor :last_name

          # template_object
          # commit
          def self.create_prospect(message)
            request(:create_prospect, Softlayer::Account::Partner::Referral::Prospect, message)
          end

          def get_account
            request(:get_account, Softlayer::Account)
          end

          def get_assigned_employees
            request(:get_assigned_employees, Array[Softlayer::User::Employee])
          end

          def get_object
            request(:get_object, Softlayer::Account::Partner::Referral::Prospect)
          end

          def get_quotes
            request(:get_quotes, Array[Softlayer::Billing::Order::Quote])
          end

          def self.get_survey_questions
            request(:get_survey_questions, Array[Softlayer::Survey::Question])
          end

          def get_type
            request(:get_type, Softlayer::User::Customer::Prospect::Type)
          end

          class Representer < Softlayer::User::Customer::Prospect::Representer
            include Representable::Hash
            include Representable::Coercion
            property :company_name, type: String
            property :email_address, type: String
            property :first_name, type: String
            property :id, type: Integer
            property :last_name, type: String
          end
        end
      end
    end
  end
end
