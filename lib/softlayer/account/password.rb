module Softlayer
  class Account
    class Password < Softlayer::Entity
      SERVICE = 'SoftLayer_Account_Password'
      autoload :Type, 'softlayer/account/password/type'
      attr_accessor :account_id
      attr_accessor :id
      attr_accessor :notes
      attr_accessor :password
      attr_accessor :type_id
      attr_accessor :username
      attr_accessor :account
      attr_accessor :type

      def edit_object(template_object = nil)
        message = {template_object: template_object}
        request(:edit_object, Boolean, message)
      end

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def get_object
        request(:get_object, Softlayer::Account::Password)
      end

      def get_type
        request(:get_type, Softlayer::Account::Password::Type)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :id, type: Integer
        property :notes, type: String
        property :password, type: String
        property :type_id, type: Integer
        property :username, type: String
      end
    end
  end
end
