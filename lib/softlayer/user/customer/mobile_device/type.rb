module Softlayer
  module User
    class Customer
      class MobileDevice
        class Type < Softlayer::Entity
          SERVICE = 'SoftLayer_User_Customer_MobileDevice_Type'
          attr_accessor :create_date
          attr_accessor :description
          attr_accessor :id
          attr_accessor :modify_date
          attr_accessor :name

          def self.get_all_objects
            request(:get_all_objects, Array[Softlayer::User::Customer::MobileDevice::Type])
          end

          def get_object
            request(:get_object, Softlayer::User::Customer::MobileDevice::Type)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :create_date, type: DateTime
            property :description, type: String
            property :id, type: Integer
            property :modify_date, type: DateTime
            property :name, type: String
          end
        end
      end
    end
  end
end
