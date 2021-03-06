module Softlayer
  class Account
    class MasterServiceAgreement < Softlayer::Entity
      SERVICE = 'SoftLayer_Account_MasterServiceAgreement'
      attr_accessor :account_id
      attr_accessor :guid
      attr_accessor :id
      attr_accessor :name
      attr_accessor :account

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def self.get_file
        request(:get_file, Softlayer::Container::Utility::File::Entity)
      end

      def get_object
        request(:get_object, Softlayer::Account::MasterServiceAgreement)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :guid, type: String
        property :id, type: Integer
        property :name, type: String
      end
    end
  end
end
