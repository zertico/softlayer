module Softlayer
  class Account
    class Shipment < Softlayer::Model
      SERVICE = 'SoftLayer_Account_Shipment'
      autoload :Item, 'softlayer/account/shipment/item'
      autoload :Status, 'softlayer/account/shipment/status'
      autoload :Type, 'softlayer/account/shipment/type'
      autoload :Resource, 'softlayer/account/shipment/resource'
      autoload :Tracking, 'softlayer/account/shipment/tracking'
      attr_accessor :account_id
      attr_accessor :courier_id
      attr_accessor :courier_name
      attr_accessor :create_user_id
      attr_accessor :destination_address_id
      attr_accessor :destination_date
      attr_accessor :id
      attr_accessor :modify_user_id
      attr_accessor :note
      attr_accessor :origination_address_id
      attr_accessor :origination_date
      attr_accessor :status_id
      attr_accessor :type_id
      attr_accessor :shipment_item_count
      attr_accessor :tracking_data_count
      attr_accessor :account
      attr_accessor :courier
      attr_accessor :create_employee
      attr_accessor :create_user
      attr_accessor :destination_address
      attr_accessor :modify_employee
      attr_accessor :modify_user
      attr_accessor :origination_address
      attr_accessor :shipment_items
      attr_accessor :status
      attr_accessor :tracking_data
      attr_accessor :type

      def edit_object(template_object = nil)
        message = {template_object: template_object}
        request(:edit_object, Boolean, message)
      end

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def self.get_all_couriers
        request(:get_all_couriers, Array[Softlayer::Auxiliary::Shipping::Courier])
      end

      def self.get_all_couriers_by_type(courier_type_key_name = nil)
        message = {courier_type_key_name: courier_type_key_name}
        request(:get_all_couriers_by_type, Array[Softlayer::Auxiliary::Shipping::Courier], message)
      end

      def self.get_all_shipment_statuses
        request(:get_all_shipment_statuses, Array[Softlayer::Account::Shipment::Status])
      end

      def self.get_all_shipment_types
        request(:get_all_shipment_types, Array[Softlayer::Account::Shipment::Type])
      end

      def get_courier
        request(:get_courier, Softlayer::Auxiliary::Shipping::Courier)
      end

      def get_create_employee
        request(:get_create_employee, Softlayer::User::Employee)
      end

      def get_create_user
        request(:get_create_user, Softlayer::User::Customer)
      end

      def get_destination_address
        request(:get_destination_address, Softlayer::Account::Address)
      end

      def get_modify_employee
        request(:get_modify_employee, Softlayer::User::Employee)
      end

      def get_modify_user
        request(:get_modify_user, Softlayer::User::Customer)
      end

      def get_object
        request(:get_object, Softlayer::Account::Shipment)
      end

      def get_origination_address
        request(:get_origination_address, Softlayer::Account::Address)
      end

      def get_shipment_items
        request(:get_shipment_items, Array[Softlayer::Account::Shipment::Item])
      end

      def get_status
        request(:get_status, Softlayer::Account::Shipment::Status)
      end

      def get_tracking_data
        request(:get_tracking_data, Array[Softlayer::Account::Shipment::Tracking::Data])
      end

      def get_type
        request(:get_type, Softlayer::Account::Shipment::Type)
      end

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :courier_id, type: Integer
        property :courier_name, type: String
        property :create_user_id, type: Integer
        property :destination_address_id, type: Integer
        property :destination_date, type: DateTime
        property :id, type: Integer
        property :modify_user_id, type: Integer
        property :note, type: String
        property :origination_address_id, type: Integer
        property :origination_date, type: DateTime
        property :status_id, type: Integer
        property :type_id, type: Integer
        property :shipment_item_count, type: BigDecimal
        property :tracking_data_count, type: BigDecimal
      end
    end
  end
end
