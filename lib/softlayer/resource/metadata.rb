module Softlayer
  module Resource
    class Metadata < Softlayer::Model
      SERVICE = 'SoftLayer_Resource_Metadata'

      def self.get_backend_mac_addresses
        request(:get_backend_mac_addresses, Array[String])
      end

      def self.get_datacenter
        request(:get_datacenter, String)
      end

      def self.get_datacenter_id
        request(:get_datacenter_id, Integer)
      end

      def self.get_domain
        request(:get_domain, String)
      end

      def self.get_frontend_mac_addresses
        request(:get_frontend_mac_addresses, Array[String])
      end

      def self.get_fully_qualified_domain_name
        request(:get_fully_qualified_domain_name, String)
      end

      def self.get_hostname
        request(:get_hostname, String)
      end

      def self.get_id
        request(:get_id, Integer)
      end

      def self.get_primary_backend_ip_address
        request(:get_primary_backend_ip_address, String)
      end

      def self.get_primary_ip_address
        request(:get_primary_ip_address, String)
      end

      def self.get_provision_state
        request(:get_provision_state, String)
      end

      def self.get_router(mac_address = nil)
        message = {mac_address: mac_address}
        request(:get_router, String, message)
      end

      def self.get_service_resource(service_name = nil, index = nil)
        message = {service_name: service_name, index: index}
        request(:get_service_resource, String, message)
      end

      def self.get_service_resources
        request(:get_service_resources, Array[Softlayer::Network::Service::Resource])
      end

      def self.get_tags
        request(:get_tags, Array[String])
      end

      def self.get_user_metadata
        request(:get_user_metadata, String)
      end

      def self.get_vlan_ids(mac_address = nil)
        message = {mac_address: mac_address}
        request(:get_vlan_ids, Array[Integer], message)
      end

      def self.get_vlans(mac_address = nil)
        message = {mac_address: mac_address}
        request(:get_vlans, Array[Integer], message)
      end

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
      end
    end
  end
end
