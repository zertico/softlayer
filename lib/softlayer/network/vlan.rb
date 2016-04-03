module Softlayer
  class Network
    class Vlan < Softlayer::Entity
      SERVICE = 'SoftLayer_Network_Vlan'
      autoload :Firewall, 'softlayer/network/vlan/firewall'
      autoload :Type, 'softlayer/network/vlan/type'
      attr_accessor :account_id
      attr_accessor :id
      attr_accessor :modify_date
      attr_accessor :name
      attr_accessor :note
      attr_accessor :primary_subnet_id
      attr_accessor :vlan_number
      attr_accessor :additional_primary_subnet_count
      attr_accessor :firewall_guest_network_component_count
      attr_accessor :firewall_interface_count
      attr_accessor :firewall_network_component_count
      attr_accessor :firewall_rule_count
      attr_accessor :guest_network_component_count
      attr_accessor :hardware_count
      attr_accessor :network_component_count
      attr_accessor :network_component_trunk_count
      attr_accessor :primary_subnet_count
      attr_accessor :private_network_gateway_count
      attr_accessor :protected_ip_address_count
      attr_accessor :public_network_gateway_count
      attr_accessor :resource_group_count
      attr_accessor :resource_group_member_count
      attr_accessor :scale_vlan_count
      attr_accessor :secondary_subnet_count
      attr_accessor :subnet_count
      attr_accessor :tag_reference_count
      attr_accessor :virtual_guest_count
      attr_accessor :account
      attr_accessor :additional_primary_subnets
      attr_accessor :attached_network_gateway
      attr_accessor :attached_network_gateway_flag
      attr_accessor :attached_network_gateway_vlan
      attr_accessor :billing_item
      attr_accessor :dedicated_firewall_flag
      attr_accessor :extension_router
      attr_accessor :firewall_guest_network_components
      attr_accessor :firewall_interfaces
      attr_accessor :firewall_network_components
      attr_accessor :firewall_rules
      attr_accessor :guest_network_components
      attr_accessor :hardware
      attr_accessor :high_availability_firewall_flag
      attr_accessor :local_disk_storage_capability_flag
      attr_accessor :network
      attr_accessor :network_component_trunks
      attr_accessor :network_components
      attr_accessor :network_space
      attr_accessor :network_vlan_firewall
      attr_accessor :primary_router
      attr_accessor :primary_subnet
      attr_accessor :primary_subnet_version6
      attr_accessor :primary_subnets
      attr_accessor :private_network_gateways
      attr_accessor :protected_ip_addresses
      attr_accessor :public_network_gateways
      attr_accessor :resource_group_member
      attr_accessor :resource_groups
      attr_accessor :san_storage_capability_flag
      attr_accessor :scale_vlans
      attr_accessor :secondary_router
      attr_accessor :secondary_subnets
      attr_accessor :subnets
      attr_accessor :tag_references
      attr_accessor :total_primary_ip_address_count
      attr_accessor :type
      attr_accessor :virtual_guests

      # template_object
      def edit_object(message)
        request(:edit_object, Boolean, message)
      end

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def get_additional_primary_subnets
        request(:get_additional_primary_subnets, Array[Softlayer::Network::Subnet])
      end

      def get_attached_network_gateway
        request(:get_attached_network_gateway, Softlayer::Network::Gateway)
      end

      def get_attached_network_gateway_flag
        request(:get_attached_network_gateway_flag, Boolean)
      end

      def get_attached_network_gateway_vlan
        request(:get_attached_network_gateway_vlan, Softlayer::Network::Gateway::Vlan)
      end

      def get_billing_item
        request(:get_billing_item, Softlayer::Billing::Item)
      end

      def get_cancel_failure_reasons
        request(:get_cancel_failure_reasons, Array[String])
      end

      def get_dedicated_firewall_flag
        request(:get_dedicated_firewall_flag, Integer)
      end

      def get_extension_router
        request(:get_extension_router, Softlayer::Hardware::Router)
      end

      def get_firewall_guest_network_components
        request(:get_firewall_guest_network_components, Array[Softlayer::Network::Component::Firewall])
      end

      def get_firewall_interfaces
        request(:get_firewall_interfaces, Array[Softlayer::Network::Firewall::Module::Context::Interface])
      end

      def get_firewall_network_components
        request(:get_firewall_network_components, Array[Softlayer::Network::Component::Firewall])
      end

      def get_firewall_protectable_ip_addresses
        request(:get_firewall_protectable_ip_addresses, Array[Softlayer::Network::Subnet::IpAddress])
      end

      def get_firewall_protectable_subnets
        request(:get_firewall_protectable_subnets, Array[Softlayer::Network::Subnet])
      end

      def get_firewall_rules
        request(:get_firewall_rules, Array[Softlayer::Network::Vlan::Firewall::Rule])
      end

      def get_guest_network_components
        request(:get_guest_network_components, Array[Softlayer::Virtual::Guest::Network::Component])
      end

      def get_hardware
        request(:get_hardware, Array[Softlayer::Hardware])
      end

      def get_high_availability_firewall_flag
        request(:get_high_availability_firewall_flag, Boolean)
      end

      def get_local_disk_storage_capability_flag
        request(:get_local_disk_storage_capability_flag, Boolean)
      end

      def get_network
        request(:get_network, Softlayer::Network)
      end

      def get_network_component_trunks
        request(:get_network_component_trunks, Array[Softlayer::Network::Component::Network::Vlan::Trunk])
      end

      def get_network_components
        request(:get_network_components, Array[Softlayer::Network::Component])
      end

      def get_network_space
        request(:get_network_space, String)
      end

      def get_network_vlan_firewall
        request(:get_network_vlan_firewall, Softlayer::Network::Vlan::Firewall)
      end

      def get_object
        request(:get_object, Softlayer::Network::Vlan)
      end

      def get_primary_router
        request(:get_primary_router, Softlayer::Hardware::Router)
      end

      def get_primary_subnet
        request(:get_primary_subnet, Softlayer::Network::Subnet)
      end

      def get_primary_subnet_version6
        request(:get_primary_subnet_version6, Softlayer::Network::Subnet)
      end

      def get_primary_subnets
        request(:get_primary_subnets, Array[Softlayer::Network::Subnet])
      end

      def get_private_network_gateways
        request(:get_private_network_gateways, Array[Softlayer::Network::Gateway])
      end

      def get_private_vlan
        request(:get_private_vlan, Softlayer::Network::Vlan)
      end

      # ip_address
      def self.get_private_vlan_by_ip_address(message)
        request(:get_private_vlan_by_ip_address, Softlayer::Network::Vlan, message)
      end

      def get_protected_ip_addresses
        request(:get_protected_ip_addresses, Array[Softlayer::Network::Subnet::IpAddress])
      end

      def get_public_network_gateways
        request(:get_public_network_gateways, Array[Softlayer::Network::Gateway])
      end

      # fqdn
      def self.get_public_vlan_by_fqdn(message)
        request(:get_public_vlan_by_fqdn, Softlayer::Network::Vlan, message)
      end

      def get_resource_group_member
        request(:get_resource_group_member, Array[Softlayer::Resource::Group::Member])
      end

      def get_resource_groups
        request(:get_resource_groups, Array[Softlayer::Resource::Group])
      end

      def get_reverse_domain_records
        request(:get_reverse_domain_records, Array[Softlayer::Dns::Domain])
      end

      def get_san_storage_capability_flag
        request(:get_san_storage_capability_flag, Boolean)
      end

      def get_scale_vlans
        request(:get_scale_vlans, Array[Softlayer::Scale::Network::Vlan])
      end

      def get_secondary_router
        request(:get_secondary_router, Softlayer::Hardware)
      end

      def get_secondary_subnets
        request(:get_secondary_subnets, Array[Softlayer::Network::Subnet])
      end

      def get_subnets
        request(:get_subnets, Array[Softlayer::Network::Subnet])
      end

      def get_tag_references
        request(:get_tag_references, Array[Softlayer::Tag::Reference])
      end

      def get_total_primary_ip_address_count
        request(:get_total_primary_ip_address_count, Integer)
      end

      def get_type
        request(:get_type, Softlayer::Network::Vlan::Type)
      end

      def get_virtual_guests
        request(:get_virtual_guests, Array[Softlayer::Virtual::Guest])
      end

      # ip_address
      def self.get_vlan_for_ip_address(message)
        request(:get_vlan_for_ip_address, Softlayer::Network::Vlan, message)
      end

      # tags
      def set_tags(message)
        request(:set_tags, Boolean, message)
      end

      # enabled
      def update_firewall_intra_vlan_communication(message)
        request(:update_firewall_intra_vlan_communication, nil, message)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :id, type: Integer
        property :modify_date, type: DateTime
        property :name, type: String
        property :note, type: String
        property :primary_subnet_id, type: Integer
        property :vlan_number, type: Integer
        property :additional_primary_subnet_count, type: BigDecimal
        property :firewall_guest_network_component_count, type: BigDecimal
        property :firewall_interface_count, type: BigDecimal
        property :firewall_network_component_count, type: BigDecimal
        property :firewall_rule_count, type: BigDecimal
        property :guest_network_component_count, type: BigDecimal
        property :hardware_count, type: BigDecimal
        property :network_component_count, type: BigDecimal
        property :network_component_trunk_count, type: BigDecimal
        property :primary_subnet_count, type: BigDecimal
        property :private_network_gateway_count, type: BigDecimal
        property :protected_ip_address_count, type: BigDecimal
        property :public_network_gateway_count, type: BigDecimal
        property :resource_group_count, type: BigDecimal
        property :resource_group_member_count, type: BigDecimal
        property :scale_vlan_count, type: BigDecimal
        property :secondary_subnet_count, type: BigDecimal
        property :subnet_count, type: BigDecimal
        property :tag_reference_count, type: BigDecimal
        property :virtual_guest_count, type: BigDecimal
        property :attached_network_gateway_flag, type: Boolean
        property :dedicated_firewall_flag, type: Integer
        property :high_availability_firewall_flag, type: Boolean
        property :local_disk_storage_capability_flag, type: Boolean
        property :network_space, type: String
        property :san_storage_capability_flag, type: Boolean
        property :total_primary_ip_address_count, type: Integer
      end
    end
  end
end
