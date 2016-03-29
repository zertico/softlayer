module Softlayer
  class Account
    class Shipment
      class Type < Softlayer::Entity
        SERVICE = 'SoftLayer_Account_Shipment_Type'
        attr_accessor :create_date
        attr_accessor :description
        attr_accessor :id
        attr_accessor :key_name
        attr_accessor :name

        def get_object
          request(:get_object, Softlayer::Account::Shipment::Type)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :description, type: String
          property :id, type: Integer
          property :key_name, type: String
          property :name, type: String
        end
      end
    end
  end
end
