module Softlayer
  class Network
    module Message
      class Delivery < Softlayer::Model
        SERVICE = 'SoftLayer_Network_Message_Delivery'
        autoload :Attribute, 'softlayer/network/message/delivery/attribute'
        autoload :Type, 'softlayer/network/message/delivery/type'
        autoload :Vendor, 'softlayer/network/message/delivery/vendor'
        autoload :Email, 'softlayer/network/message/delivery/email'
        attr_accessor :account_id
        attr_accessor :create_date
        attr_accessor :id
        attr_accessor :modify_date
        attr_accessor :password
        attr_accessor :type_id
        attr_accessor :username
        attr_accessor :vendor_id
        attr_accessor :account
        attr_accessor :billing_item
        attr_accessor :type
        attr_accessor :vendor

        def edit_object(template_object = nil)
          message = {template_object: template_object}
          request(:edit_object, Boolean, message)
        end

        def get_account
          request(:get_account, Softlayer::Account)
        end

        def get_billing_item
          request(:get_billing_item, Softlayer::Billing::Item)
        end

        def get_object
          request(:get_object, Softlayer::Network::Message::Delivery)
        end

        def get_type
          request(:get_type, Softlayer::Network::Message::Delivery::Type)
        end

        def get_vendor
          request(:get_vendor, Softlayer::Network::Message::Delivery::Vendor)
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :account_id, type: Integer
          property :create_date, type: DateTime
          property :id, type: Integer
          property :modify_date, type: DateTime
          property :password, type: String
          property :type_id, type: Integer
          property :username, type: String
          property :vendor_id, type: Integer
        end
      end
    end
  end
end
