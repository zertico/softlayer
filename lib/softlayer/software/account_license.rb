module Softlayer
  module Software
    class AccountLicense < Softlayer::Entity
      SERVICE = 'SoftLayer_Software_AccountLicense'
      attr_accessor :account_id
      attr_accessor :capacity
      attr_accessor :key
      attr_accessor :units
      attr_accessor :account
      attr_accessor :billing_item
      attr_accessor :software_description

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def get_billing_item
        request(:get_billing_item, Softlayer::Billing::Item)
      end

      def get_object
        request(:get_object, Softlayer::Software::AccountLicense)
      end

      def get_software_description
        request(:get_software_description, Softlayer::Software::Description)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :capacity, type: String
        property :key, type: String
        property :units, type: String
      end
    end
  end
end
