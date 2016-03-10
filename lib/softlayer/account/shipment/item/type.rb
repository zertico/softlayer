module Softlayer
  class Account
    class Shipment
      class Item
        class Type < Softlayer::Model
          SERVICE = 'SoftLayer_Account_Shipment_Item_Type'
          attr_accessor :create_date
          attr_accessor :id
          attr_accessor :key_name
          attr_accessor :name

          def get_object
            request(:get_object, Softlayer::Account::Shipment::Item::Type)
          end

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :create_date, type: DateTime
            property :id, type: Integer
            property :key_name, type: String
            property :name, type: String
          end
        end
      end
    end
  end
end
