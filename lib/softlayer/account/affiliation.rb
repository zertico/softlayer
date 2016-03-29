module Softlayer
  class Account
    class Affiliation < Softlayer::Entity
      SERVICE = 'SoftLayer_Account_Affiliation'
      attr_accessor :account_id
      attr_accessor :affiliate_id
      attr_accessor :create_date
      attr_accessor :id
      attr_accessor :modify_date
      attr_accessor :account

      def self.create_object(template_object = nil)
        message = {template_object: template_object}
        request(:create_object, Softlayer::Account::Affiliation, message)
      end

      def delete_object
        request(:delete_object, Boolean)
      end

      def edit_object(template_object = nil)
        message = {template_object: template_object}
        request(:edit_object, Boolean, message)
      end

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def self.get_account_affiliations_by_affiliate_id(affiliate_id = nil)
        message = {affiliate_id: affiliate_id}
        request(:get_account_affiliations_by_affiliate_id, Array[Softlayer::Account::Affiliation], message)
      end

      def get_object
        request(:get_object, Softlayer::Account::Affiliation)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :affiliate_id, type: String
        property :create_date, type: DateTime
        property :id, type: Integer
        property :modify_date, type: DateTime
      end
    end
  end
end
