module Softlayer
  class Account
    class Agreement < Softlayer::Model
      SERVICE = 'SoftLayer_Account_Agreement'
      autoload :Status, 'softlayer/account/agreement/status'
      autoload :Type, 'softlayer/account/agreement/type'
      attr_accessor :agreement_type_id
      attr_accessor :auto_renew
      attr_accessor :cancellation_fee
      attr_accessor :create_date
      attr_accessor :duration_months
      attr_accessor :end_date
      attr_accessor :id
      attr_accessor :start_date
      attr_accessor :status_id
      attr_accessor :title
      attr_accessor :attached_billing_agreement_file_count
      attr_accessor :billing_item_count
      attr_accessor :top_level_billing_item_count
      attr_accessor :account
      attr_accessor :agreement_type
      attr_accessor :attached_billing_agreement_files
      attr_accessor :billing_items
      attr_accessor :status
      attr_accessor :top_level_billing_items

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def get_agreement_type
        request(:get_agreement_type, Softlayer::Account::Agreement::Type)
      end

      def get_attached_billing_agreement_files
        request(:get_attached_billing_agreement_files, Array[Softlayer::Account::MasterServiceAgreement])
      end

      def get_billing_items
        request(:get_billing_items, Array[Softlayer::Billing::Item])
      end

      def get_object
        request(:get_object, Softlayer::Account::Agreement)
      end

      def get_status
        request(:get_status, Softlayer::Account::Agreement::Status)
      end

      def get_top_level_billing_items
        request(:get_top_level_billing_items, Array[Softlayer::Billing::Item])
      end

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :agreement_type_id, type: Integer
        property :auto_renew, type: Integer
        property :cancellation_fee, type: Integer
        property :create_date, type: DateTime
        property :duration_months, type: Integer
        property :end_date, type: DateTime
        property :id, type: Integer
        property :start_date, type: DateTime
        property :status_id, type: Integer
        property :title, type: String
        property :attached_billing_agreement_file_count, type: BigDecimal
        property :billing_item_count, type: BigDecimal
        property :top_level_billing_item_count, type: BigDecimal
      end
    end
  end
end
