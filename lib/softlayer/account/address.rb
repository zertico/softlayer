module Softlayer
  class Account
    class Address < Softlayer::Entity
      SERVICE = 'SoftLayer_Account_Address'
      autoload :Type, 'softlayer/account/address/type'
      attr_accessor :account_id
      attr_accessor :address1
      attr_accessor :address2
      attr_accessor :city
      attr_accessor :contact_name
      attr_accessor :country
      attr_accessor :description
      attr_accessor :id
      attr_accessor :is_active
      attr_accessor :location_id
      attr_accessor :postal_code
      attr_accessor :state
      attr_accessor :account
      attr_accessor :create_user
      attr_accessor :location
      attr_accessor :modify_employee
      attr_accessor :modify_user
      attr_accessor :type

      def self.create_object(template_object = nil)
        message = {template_object: template_object}
        request(:create_object, Softlayer::Account::Address, message)
      end

      def edit_object(template_object = nil)
        message = {template_object: template_object}
        request(:edit_object, Boolean, message)
      end

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def self.get_all_data_centers
        request(:get_all_data_centers, Array[Softlayer::Account::Address])
      end

      def get_create_user
        request(:get_create_user, Softlayer::User::Customer)
      end

      def get_location
        request(:get_location, Softlayer::Location)
      end

      def get_modify_employee
        request(:get_modify_employee, Softlayer::User::Employee)
      end

      def get_modify_user
        request(:get_modify_user, Softlayer::User::Customer)
      end

      def self.get_network_address(name = nil)
        message = {name: name}
        request(:get_network_address, Array[Softlayer::Account::Address], message)
      end

      def get_object
        request(:get_object, Softlayer::Account::Address)
      end

      def get_type
        request(:get_type, Softlayer::Account::Address::Type)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :address1, type: String
        property :address2, type: String
        property :city, type: String
        property :contact_name, type: String
        property :country, type: String
        property :description, type: String
        property :id, type: Integer
        property :is_active, type: Integer
        property :location_id, type: Integer
        property :postal_code, type: String
        property :state, type: String
      end
    end
  end
end
