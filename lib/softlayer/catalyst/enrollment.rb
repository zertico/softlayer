module Softlayer
  module Catalyst
    class Enrollment < Softlayer::Model
      SERVICE = 'SoftLayer_Catalyst_Enrollment'
      autoload :Request, 'softlayer/catalyst/enrollment/request'
      attr_accessor :account_id
      attr_accessor :affiliate_id
      attr_accessor :agreement_complete_flag
      attr_accessor :company_description
      attr_accessor :company_type_id
      attr_accessor :enrollment_date
      attr_accessor :graduation_date
      attr_accessor :monthly_credit_amount
      attr_accessor :representative_employee_id
      attr_accessor :account
      attr_accessor :affiliate
      attr_accessor :company_type
      attr_accessor :is_active_flag
      attr_accessor :representative

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def get_affiliate
        request(:get_affiliate, Softlayer::Catalyst::Affiliate)
      end

      def self.get_affiliates
        request(:get_affiliates, Array[Softlayer::Catalyst::Affiliate])
      end

      def get_company_type
        request(:get_company_type, Softlayer::Catalyst::Company::Type)
      end

      def self.get_company_types
        request(:get_company_types, Array[Softlayer::Catalyst::Company::Type])
      end

      def self.get_enrollment_request_annual_revenue_options
        request(:get_enrollment_request_annual_revenue_options, Array[Softlayer::Catalyst::Enrollment::Request::Container::AnswerOption])
      end

      def self.get_enrollment_request_user_count_options
        request(:get_enrollment_request_user_count_options, Array[Softlayer::Catalyst::Enrollment::Request::Container::AnswerOption])
      end

      def self.get_enrollment_request_years_in_operation_options
        request(:get_enrollment_request_years_in_operation_options, Array[Softlayer::Catalyst::Enrollment::Request::Container::AnswerOption])
      end

      def get_is_active_flag
        request(:get_is_active_flag, Boolean)
      end

      def get_object
        request(:get_object, Softlayer::Catalyst::Enrollment)
      end

      def get_representative
        request(:get_representative, Softlayer::User::Employee)
      end

      def self.request_manual_enrollment(request = nil)
        message = {request: request}
        request(:request_manual_enrollment, nil, message)
      end

      def self.request_self_enrollment(enrollment_request = nil)
        message = {enrollment_request: enrollment_request}
        request(:request_self_enrollment, Softlayer::Account, message)
      end

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :affiliate_id, type: Integer
        property :agreement_complete_flag, type: Integer
        property :company_description, type: String
        property :company_type_id, type: Integer
        property :enrollment_date, type: DateTime
        property :graduation_date, type: DateTime
        property :monthly_credit_amount, type: Float
        property :representative_employee_id, type: Integer
        property :is_active_flag, type: Boolean
      end
    end
  end
end
