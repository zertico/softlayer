module Softlayer
  module User
    class Customer
      class ApiAuthentication < Softlayer::Entity
        SERVICE = 'SoftLayer_User_Customer_ApiAuthentication'
        attr_accessor :authentication_key
        attr_accessor :id
        attr_accessor :ip_address_restriction
        attr_accessor :timestamp_key
        attr_accessor :user_id
        attr_accessor :user

        def edit_object(template_object = nil)
          message = {template_object: template_object}
          request(:edit_object, Softlayer::User::Customer::ApiAuthentication, message)
        end

        def get_object
          request(:get_object, Softlayer::User::Customer::ApiAuthentication)
        end

        def get_user
          request(:get_user, Softlayer::User::Customer)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :authentication_key, type: String
          property :id, type: Integer
          property :ip_address_restriction, type: String
          property :timestamp_key, type: Integer
          property :user_id, type: Integer
        end
      end
    end
  end
end
