module Softlayer
  class Account
    module Authentication
      class Attribute < Softlayer::Entity
        SERVICE = 'SoftLayer_Account_Authentication_Attribute'
        autoload :Type, 'softlayer/account/authentication/attribute/type'
        attr_accessor :account_id
        attr_accessor :id
        attr_accessor :type_id
        attr_accessor :value
        attr_accessor :account
        attr_accessor :authentication_record
        attr_accessor :type

        def get_account
          request(:get_account, Softlayer::Account)
        end

        def get_authentication_record
          request(:get_authentication_record, Softlayer::Account::Authentication::Saml)
        end

        def get_object
          request(:get_object, Softlayer::Account::Authentication::Attribute)
        end

        def get_type
          request(:get_type, Softlayer::Account::Authentication::Attribute::Type)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :account_id, type: Integer
          property :id, type: Integer
          property :type_id, type: Integer
          property :value, type: String
        end
      end
    end
  end
end
