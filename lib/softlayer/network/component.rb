module Softlayer
  class Network
    class Component < Softlayer::Entity
      SERVICE = 'SoftLayer_Network_Component'
      autoload :Detail, 'softlayer/network/component/detail'
      autoload :Firewall, 'softlayer/network/component/firewall'
      autoload :Group, 'softlayer/network/component/group'
      autoload :IpAddress, 'softlayer/network/component/ip_address'
      autoload :RemoteManagement, 'softlayer/network/component/remote_management'
      autoload :Duplex, 'softlayer/network/component/duplex'
      autoload :Network, 'softlayer/network/component/network'
      autoload :Uplink, 'softlayer/network/component/uplink'
      attr_accessor :duplex_mode_id
      attr_accessor :hardware_id
      attr_accessor :id
      attr_accessor :ipmi_ip_address
      attr_accessor :ipmi_mac_address
      attr_accessor :mac_address
      attr_accessor :max_speed
      attr_accessor :modify_date
      attr_accessor :name
      attr_accessor :network_vlan_id
      attr_accessor :port
      attr_accessor :primary_ip_address
      attr_accessor :speed
      attr_accessor :status
      attr_accessor :ip_address_binding_count
      attr_accessor :ip_address_count
      attr_accessor :network_hardware_count
      attr_accessor :network_vlan_trunk_count
      attr_accessor :recent_command_count
      attr_accessor :remote_management_user_count
      attr_accessor :subnet_count
      attr_accessor :active_command
      attr_accessor :downlink_component
      attr_accessor :duplex_mode
      attr_accessor :hardware
      attr_accessor :high_availability_firewall_flag
      attr_accessor :interface
      attr_accessor :ip_address_bindings
      attr_accessor :ip_addresses
      attr_accessor :last_command
      attr_accessor :metric_tracking_object
      attr_accessor :network_component_firewall
      attr_accessor :network_component_group
      attr_accessor :network_hardware
      attr_accessor :network_vlan
      attr_accessor :network_vlan_trunks
      attr_accessor :primary_ip_address_record
      attr_accessor :primary_subnet
      attr_accessor :primary_version6_ip_address_record
      attr_accessor :recent_commands
      attr_accessor :redundancy_capable_flag
      attr_accessor :redundancy_enabled_flag
      attr_accessor :remote_management_users
      attr_accessor :router
      attr_accessor :storage_network_flag
      attr_accessor :subnets
      attr_accessor :uplink_component
      attr_accessor :uplink_duplex_mode

      def add_network_vlan_trunks(network_vlans = nil)
        message = {network_vlans: network_vlans}
        request(:add_network_vlan_trunks, Array[Softlayer::Network::Vlan], message)
      end

      def clear_network_vlan_trunks
        request(:clear_network_vlan_trunks, Array[Softlayer::Network::Vlan])
      end

      def get_active_command
        request(:get_active_command, Softlayer::Hardware::Component::RemoteManagement::Command::Request)
      end

      def get_custom_bandwidth_data_by_date(graph_data = nil)
        message = {graph_data: graph_data}
        request(:get_custom_bandwidth_data_by_date, Softlayer::Container::Graph, message)
      end

      def get_downlink_component
        request(:get_downlink_component, Softlayer::Network::Component)
      end

      def get_duplex_mode
        request(:get_duplex_mode, Softlayer::Network::Component::Duplex::Mode)
      end

      def get_hardware
        request(:get_hardware, Softlayer::Hardware)
      end

      def get_high_availability_firewall_flag
        request(:get_high_availability_firewall_flag, Boolean)
      end

      def get_interface
        request(:get_interface, Softlayer::Network::Bandwidth::Version1::Interface)
      end

      def get_ip_address_bindings
        request(:get_ip_address_bindings, Array[Softlayer::Network::Component::IpAddress])
      end

      def get_ip_addresses
        request(:get_ip_addresses, Array[Softlayer::Network::Subnet::IpAddress])
      end

      def get_last_command
        request(:get_last_command, Softlayer::Hardware::Component::RemoteManagement::Command::Request)
      end

      def get_metric_tracking_object
        request(:get_metric_tracking_object, Softlayer::Metric::Tracking::Object)
      end

      def get_network_component_firewall
        request(:get_network_component_firewall, Softlayer::Network::Component::Firewall)
      end

      def get_network_component_group
        request(:get_network_component_group, Softlayer::Network::Component::Group)
      end

      def get_network_hardware
        request(:get_network_hardware, Array[Softlayer::Hardware])
      end

      def get_network_vlan
        request(:get_network_vlan, Softlayer::Network::Vlan)
      end

      def get_network_vlan_trunks
        request(:get_network_vlan_trunks, Array[Softlayer::Network::Component::Network::Vlan::Trunk])
      end

      def get_object
        request(:get_object, Softlayer::Network::Component)
      end

      def get_port_statistics
        request(:get_port_statistics, Softlayer::Container::Network::Port::Statistic)
      end

      def get_primary_ip_address_record
        request(:get_primary_ip_address_record, Softlayer::Network::Subnet::IpAddress)
      end

      def get_primary_subnet
        request(:get_primary_subnet, Softlayer::Network::Subnet)
      end

      def get_primary_version6_ip_address_record
        request(:get_primary_version6_ip_address_record, Softlayer::Network::Subnet::IpAddress)
      end

      def get_recent_commands
        request(:get_recent_commands, Array[Softlayer::Hardware::Component::RemoteManagement::Command::Request])
      end

      def get_redundancy_capable_flag
        request(:get_redundancy_capable_flag, Boolean)
      end

      def get_redundancy_enabled_flag
        request(:get_redundancy_enabled_flag, Boolean)
      end

      def get_remote_management_users
        request(:get_remote_management_users, Array[Softlayer::Hardware::Component::RemoteManagement::User])
      end

      def get_router
        request(:get_router, Softlayer::Hardware)
      end

      def get_storage_network_flag
        request(:get_storage_network_flag, Boolean)
      end

      def get_subnets
        request(:get_subnets, Array[Softlayer::Network::Subnet])
      end

      def get_uplink_component
        request(:get_uplink_component, Softlayer::Network::Component)
      end

      def get_uplink_duplex_mode
        request(:get_uplink_duplex_mode, Softlayer::Network::Component::Duplex::Mode)
      end

      def remove_network_vlan_trunks(network_vlans = nil)
        message = {network_vlans: network_vlans}
        request(:remove_network_vlan_trunks, Array[Softlayer::Network::Vlan], message)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :duplex_mode_id, type: String
        property :hardware_id, type: Integer
        property :id, type: Integer
        property :ipmi_ip_address, type: String
        property :ipmi_mac_address, type: String
        property :mac_address, type: String
        property :max_speed, type: Integer
        property :modify_date, type: DateTime
        property :name, type: String
        property :network_vlan_id, type: Integer
        property :port, type: Integer
        property :primary_ip_address, type: String
        property :speed, type: Integer
        property :status, type: String
        property :ip_address_binding_count, type: BigDecimal
        property :ip_address_count, type: BigDecimal
        property :network_hardware_count, type: BigDecimal
        property :network_vlan_trunk_count, type: BigDecimal
        property :recent_command_count, type: BigDecimal
        property :remote_management_user_count, type: BigDecimal
        property :subnet_count, type: BigDecimal
        property :high_availability_firewall_flag, type: Boolean
        property :redundancy_capable_flag, type: Boolean
        property :redundancy_enabled_flag, type: Boolean
        property :storage_network_flag, type: Boolean
      end
    end
  end
end
