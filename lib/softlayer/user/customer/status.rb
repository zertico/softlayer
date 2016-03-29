module Softlayer
  module User
    class Customer
      class Status < Softlayer::Entity
        SERVICE = 'SoftLayer_User_Customer_Status'
        attr_accessor :id
        attr_accessor :key_name
        attr_accessor :name

        def self.get_all_objects
          request(:get_all_objects, Array[Softlayer::User::Customer::Status])
        end

        def get_object
          request(:get_object, Softlayer::User::Customer::Status)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :id, type: Integer
          property :key_name, type: String
          property :name, type: String
        end
      end
    end
  end
end
