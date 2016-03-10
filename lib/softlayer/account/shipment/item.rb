module Softlayer
  class Account
    class Shipment
      class Item < Softlayer::Model
        SERVICE = 'SoftLayer_Account_Shipment_Item'
        autoload :Type, 'softlayer/account/shipment/item/type'
        attr_accessor :create_date
        attr_accessor :description
        attr_accessor :id
        attr_accessor :package_id
        attr_accessor :shipment_id
        attr_accessor :shipment_item_id
        attr_accessor :shipment_item_type_id
        attr_accessor :shipment
        attr_accessor :shipment_item_type

        def edit_object(template_object = nil)
          message = {template_object: template_object}
          request(:edit_object, Boolean, message)
        end

        def get_object
          request(:get_object, Softlayer::Account::Shipment::Item)
        end

        def get_shipment
          request(:get_shipment, Softlayer::Account::Shipment)
        end

        def get_shipment_item_type
          request(:get_shipment_item_type, Softlayer::Account::Shipment::Item::Type)
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :description, type: String
          property :id, type: Integer
          property :package_id, type: Integer
          property :shipment_id, type: Integer
          property :shipment_item_id, type: Integer
          property :shipment_item_type_id, type: Integer
        end
      end
    end
  end
end
