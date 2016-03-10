module Softlayer
  class Network
    class Subnet < Softlayer::Model
      SERVICE = 'SoftLayer_Network_Subnet'
      autoload :IpAddress, 'softlayer/network/subnet/ip_address'
      autoload :Registration, 'softlayer/network/subnet/registration'
      autoload :Rwhois, 'softlayer/network/subnet/rwhois'
      autoload :Swip, 'softlayer/network/subnet/swip'
      attr_accessor :broadcast_address
      attr_accessor :cidr
      attr_accessor :gateway
      attr_accessor :id
      attr_accessor :is_customer_owned
      attr_accessor :is_customer_routable
      attr_accessor :modify_date
      attr_accessor :netmask
      attr_accessor :network_identifier
      attr_accessor :network_vlan_id
      attr_accessor :note
      attr_accessor :sort_order
      attr_accessor :subnet_type
      attr_accessor :total_ip_addresses
      attr_accessor :usable_ip_address_count
      attr_accessor :version
      attr_accessor :allowed_network_storage_count
      attr_accessor :allowed_network_storage_replica_count
      attr_accessor :bound_descendant_count
      attr_accessor :bound_router_count
      attr_accessor :children_count
      attr_accessor :descendant_count
      attr_accessor :hardware_count
      attr_accessor :ip_address_count
      attr_accessor :network_protection_address_count
      attr_accessor :network_tunnel_context_count
      attr_accessor :protected_ip_address_count
      attr_accessor :registration_count
      attr_accessor :resource_group_count
      attr_accessor :swip_transaction_count
      attr_accessor :unbound_descendant_count
      attr_accessor :virtual_guest_count
      attr_accessor :account
      attr_accessor :active_registration
      attr_accessor :active_swip_transaction
      attr_accessor :active_transaction
      attr_accessor :address_space
      attr_accessor :allowed_host
      attr_accessor :allowed_network_storage
      attr_accessor :allowed_network_storage_replicas
      attr_accessor :billing_item
      attr_accessor :bound_descendants
      attr_accessor :bound_router_flag
      attr_accessor :bound_routers
      attr_accessor :children
      attr_accessor :datacenter
      attr_accessor :descendants
      attr_accessor :display_label
      attr_accessor :end_point_ip_address
      attr_accessor :global_ip_record
      attr_accessor :hardware
      attr_accessor :ip_addresses
      attr_accessor :network_component
      attr_accessor :network_component_firewall
      attr_accessor :network_protection_addresses
      attr_accessor :network_tunnel_contexts
      attr_accessor :network_vlan
      attr_accessor :pod_name
      attr_accessor :protected_ip_addresses
      attr_accessor :regional_internet_registry
      attr_accessor :registrations
      attr_accessor :resource_groups
      attr_accessor :reverse_domain
      attr_accessor :role_key_name
      attr_accessor :role_name
      attr_accessor :routing_type_key_name
      attr_accessor :routing_type_name
      attr_accessor :swip_transaction
      attr_accessor :unbound_descendants
      attr_accessor :virtual_guests

      def allow_access_to_network_storage(network_storage_template_object = nil)
        message = {network_storage_template_object: network_storage_template_object}
        request(:allow_access_to_network_storage, Boolean, message)
      end

      def allow_access_to_network_storage_list(network_storage_template_objects = nil)
        message = {network_storage_template_objects: network_storage_template_objects}
        request(:allow_access_to_network_storage_list, Boolean, message)
      end

      def create_reverse_domain_records
        request(:create_reverse_domain_records, Softlayer::Dns::Domain::Reverse)
      end

      def create_subnet_route_update_transaction(new_end_point_ip_address = nil)
        message = {new_end_point_ip_address: new_end_point_ip_address}
        request(:create_subnet_route_update_transaction, Boolean, message)
      end

      def create_swip_transaction
        request(:create_swip_transaction, Boolean)
      end

      def edit_note(note = nil)
        message = {note: note}
        request(:edit_note, Boolean, message)
      end

      def self.find_all_subnets_and_active_swip_transaction_status
        request(:find_all_subnets_and_active_swip_transaction_status, Array[Softlayer::Network::Subnet])
      end

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def get_active_registration
        request(:get_active_registration, Softlayer::Network::Subnet::Registration)
      end

      def get_active_swip_transaction
        request(:get_active_swip_transaction, Softlayer::Network::Subnet::Swip::Transaction)
      end

      def get_active_transaction
        request(:get_active_transaction, Softlayer::Provisioning::Version1::Transaction)
      end

      def get_address_space
        request(:get_address_space, String)
      end

      def get_allowed_host
        request(:get_allowed_host, Softlayer::Network::Storage::Allowed::Host)
      end

      def get_allowed_network_storage
        request(:get_allowed_network_storage, Array[Softlayer::Network::Storage])
      end

      def get_allowed_network_storage_replicas
        request(:get_allowed_network_storage_replicas, Array[Softlayer::Network::Storage])
      end

      def get_attached_network_storages(nas_type = nil)
        message = {nas_type: nas_type}
        request(:get_attached_network_storages, Array[Softlayer::Network::Storage], message)
      end

      def get_available_network_storages(nas_type = nil)
        message = {nas_type: nas_type}
        request(:get_available_network_storages, Array[Softlayer::Network::Storage], message)
      end

      def get_billing_item
        request(:get_billing_item, Softlayer::Billing::Item)
      end

      def get_bound_descendants
        request(:get_bound_descendants, Array[Softlayer::Network::Subnet])
      end

      def get_bound_router_flag
        request(:get_bound_router_flag, Boolean)
      end

      def get_bound_routers
        request(:get_bound_routers, Array[Softlayer::Hardware])
      end

      def get_children
        request(:get_children, Array[Softlayer::Network::Subnet])
      end

      def get_datacenter
        request(:get_datacenter, Softlayer::Location::Datacenter)
      end

      def get_descendants
        request(:get_descendants, Array[Softlayer::Network::Subnet])
      end

      def get_display_label
        request(:get_display_label, String)
      end

      def get_end_point_ip_address
        request(:get_end_point_ip_address, Softlayer::Network::Subnet::IpAddress)
      end

      def get_global_ip_record
        request(:get_global_ip_record, Softlayer::Network::Subnet::IpAddress::Global)
      end

      def get_hardware
        request(:get_hardware, Array[Softlayer::Hardware])
      end

      def get_ip_addresses
        request(:get_ip_addresses, Array[Softlayer::Network::Subnet::IpAddress])
      end

      def get_network_component
        request(:get_network_component, Softlayer::Network::Component)
      end

      def get_network_component_firewall
        request(:get_network_component_firewall, Softlayer::Network::Component::Firewall)
      end

      def get_network_protection_addresses
        request(:get_network_protection_addresses, Array[Softlayer::Network::Protection::Address])
      end

      def get_network_tunnel_contexts
        request(:get_network_tunnel_contexts, Array[Softlayer::Network::Tunnel::Module::Context])
      end

      def get_network_vlan
        request(:get_network_vlan, Softlayer::Network::Vlan)
      end

      def get_object
        request(:get_object, Softlayer::Network::Subnet)
      end

      def get_pod_name
        request(:get_pod_name, String)
      end

      def get_protected_ip_addresses
        request(:get_protected_ip_addresses, Array[Softlayer::Network::Subnet::IpAddress])
      end

      def get_regional_internet_registry
        request(:get_regional_internet_registry, Softlayer::Network::Regional::Internet::Registry)
      end

      def get_registrations
        request(:get_registrations, Array[Softlayer::Network::Subnet::Registration])
      end

      def get_resource_groups
        request(:get_resource_groups, Array[Softlayer::Resource::Group])
      end

      def get_reverse_domain
        request(:get_reverse_domain, Softlayer::Dns::Domain)
      end

      def get_reverse_domain_records
        request(:get_reverse_domain_records, Array[Softlayer::Dns::Domain])
      end

      def get_role_key_name
        request(:get_role_key_name, String)
      end

      def get_role_name
        request(:get_role_name, String)
      end

      def get_routable_endpoint_ip_addresses
        request(:get_routable_endpoint_ip_addresses, Array[Softlayer::Network::Subnet::IpAddress])
      end

      def get_routing_type_key_name
        request(:get_routing_type_key_name, String)
      end

      def get_routing_type_name
        request(:get_routing_type_name, String)
      end

      def self.get_subnet_for_ip_address(ip_address = nil)
        message = {ip_address: ip_address}
        request(:get_subnet_for_ip_address, Softlayer::Network::Subnet, message)
      end

      def get_swip_transaction
        request(:get_swip_transaction, Array[Softlayer::Network::Subnet::Swip::Transaction])
      end

      def get_unbound_descendants
        request(:get_unbound_descendants, Array[Softlayer::Network::Subnet])
      end

      def get_virtual_guests
        request(:get_virtual_guests, Array[Softlayer::Virtual::Guest])
      end

      def remove_access_to_network_storage_list(network_storage_template_objects = nil)
        message = {network_storage_template_objects: network_storage_template_objects}
        request(:remove_access_to_network_storage_list, Boolean, message)
      end

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :broadcast_address, type: String
        property :cidr, type: Integer
        property :gateway, type: String
        property :id, type: Integer
        property :is_customer_owned, type: Boolean
        property :is_customer_routable, type: Boolean
        property :modify_date, type: DateTime
        property :netmask, type: String
        property :network_identifier, type: String
        property :network_vlan_id, type: Integer
        property :note, type: String
        property :sort_order, type: String
        property :subnet_type, type: String
        property :total_ip_addresses, type: Integer
        property :usable_ip_address_count, type: Integer
        property :version, type: Integer
        property :allowed_network_storage_count, type: BigDecimal
        property :allowed_network_storage_replica_count, type: BigDecimal
        property :bound_descendant_count, type: BigDecimal
        property :bound_router_count, type: BigDecimal
        property :children_count, type: BigDecimal
        property :descendant_count, type: BigDecimal
        property :hardware_count, type: BigDecimal
        property :ip_address_count, type: BigDecimal
        property :network_protection_address_count, type: BigDecimal
        property :network_tunnel_context_count, type: BigDecimal
        property :protected_ip_address_count, type: BigDecimal
        property :registration_count, type: BigDecimal
        property :resource_group_count, type: BigDecimal
        property :swip_transaction_count, type: BigDecimal
        property :unbound_descendant_count, type: BigDecimal
        property :virtual_guest_count, type: BigDecimal
        property :address_space, type: String
        property :bound_router_flag, type: Boolean
        property :display_label, type: String
        property :pod_name, type: String
        property :role_key_name, type: String
        property :role_name, type: String
        property :routing_type_key_name, type: String
        property :routing_type_name, type: String
      end
    end
  end
end
