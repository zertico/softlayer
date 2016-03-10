module Softlayer
  module FlexibleCredit
    class Enrollment < Softlayer::Model
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
      attr_accessor :flexible_credit_program
      attr_accessor :is_active_flag
      attr_accessor :representative

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
