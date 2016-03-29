module Softlayer
  module User
    class Customer
      module CustomerPermission
        class Permission < Softlayer::Entity
          SERVICE = 'SoftLayer_User_Customer_CustomerPermission_Permission'
          attr_accessor :key
          attr_accessor :key_name
          attr_accessor :name

          def self.get_all_objects
            request(:get_all_objects, Array[Softlayer::User::Customer::CustomerPermission::Permission])
          end

          def get_object
            request(:get_object, Softlayer::User::Customer::CustomerPermission::Permission)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :key, type: String
            property :key_name, type: String
            property :name, type: String
          end
        end
      end
    end
  end
end
