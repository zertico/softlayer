module Softlayer
  module Software
    class VirtualLicense < Softlayer::Model
      SERVICE = 'SoftLayer_Software_VirtualLicense'
      attr_accessor :account_id
      attr_accessor :host_hardware_id
      attr_accessor :id
      attr_accessor :ip_address
      attr_accessor :key
      attr_accessor :notes
      attr_accessor :software_description_id
      attr_accessor :subnet_id
      attr_accessor :account
      attr_accessor :billing_item
      attr_accessor :host_hardware
      attr_accessor :ip_address_record
      attr_accessor :software_description
      attr_accessor :subnet

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def get_billing_item
        request(:get_billing_item, Softlayer::Billing::Item)
      end

      def get_host_hardware
        request(:get_host_hardware, Softlayer::Hardware::Server)
      end

      def get_ip_address_record
        request(:get_ip_address_record, Softlayer::Network::Subnet::IpAddress)
      end

      def get_license_file
        request(:get_license_file, Softlayer::Base64Binary)
      end

      def get_object
        request(:get_object, Softlayer::Software::VirtualLicense)
      end

      def get_software_description
        request(:get_software_description, Softlayer::Software::Description)
      end

      def get_subnet
        request(:get_subnet, Softlayer::Network::Subnet)
      end

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :host_hardware_id, type: Integer
        property :id, type: Integer
        property :ip_address, type: String
        property :key, type: String
        property :notes, type: String
        property :software_description_id, type: Integer
        property :subnet_id, type: Integer
      end
    end
  end
end
