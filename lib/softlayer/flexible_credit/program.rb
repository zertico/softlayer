module Softlayer
  module FlexibleCredit
    class Program < Softlayer::Model
      SERVICE = 'SoftLayer_FlexibleCredit_Program'
      attr_accessor :id
      attr_accessor :key_name
      attr_accessor :name

      def get_affiliates_available_for_self_enrollment_by_verification_type(verification_type_key_name = nil)
        message = {verification_type_key_name: verification_type_key_name}
        request(:get_affiliates_available_for_self_enrollment_by_verification_type, Array[Softlayer::FlexibleCredit::Affiliate], message)
      end

      def self.get_company_types
        request(:get_company_types, Array[Softlayer::FlexibleCredit::Company::Type])
      end

      def get_object
        request(:get_object, Softlayer::FlexibleCredit::Program)
      end

      def self_enroll_new_account(account_template = nil)
        message = {account_template: account_template}
        request(:self_enroll_new_account, Softlayer::Account, message)
      end

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :id, type: Integer
        property :key_name, type: String
        property :name, type: String
      end
    end
  end
end
