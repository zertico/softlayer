module Softlayer
  class Network
    class Gateway < Softlayer::Entity
      SERVICE = 'SoftLayer_Network_Gateway'
      autoload :Member, 'softlayer/network/gateway/member'
      autoload :Status, 'softlayer/network/gateway/status'
      autoload :Vlan, 'softlayer/network/gateway/vlan'
      attr_accessor :account_id
      attr_accessor :group_number
      attr_accessor :id
      attr_accessor :name
      attr_accessor :network_space
      attr_accessor :private_ip_address_id
      attr_accessor :private_vlan_id
      attr_accessor :public_ip_address_id
      attr_accessor :public_ipv6_address_id
      attr_accessor :public_vlan_id
      attr_accessor :status_id
      attr_accessor :inside_vlan_count
      attr_accessor :member_count
      attr_accessor :account
      attr_accessor :inside_vlans
      attr_accessor :members
      attr_accessor :private_ip_address
      attr_accessor :private_vlan
      attr_accessor :public_ip_address
      attr_accessor :public_ipv6_address
      attr_accessor :public_vlan
      attr_accessor :status

      def bypass_all_vlans
        request(:bypass_all_vlans, nil)
      end

      def bypass_vlans(vlans = nil)
        message = {vlans: vlans}
        request(:bypass_vlans, nil, message)
      end

      def self.create_object(template_object = nil)
        message = {template_object: template_object}
        request(:create_object, Softlayer::Network::Gateway, message)
      end

      def edit_object(template_object = nil)
        message = {template_object: template_object}
        request(:edit_object, Boolean, message)
      end

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def get_inside_vlans
        request(:get_inside_vlans, Array[Softlayer::Network::Gateway::Vlan])
      end

      def get_members
        request(:get_members, Array[Softlayer::Network::Gateway::Member])
      end

      def get_object
        request(:get_object, Softlayer::Network::Gateway)
      end

      def get_possible_inside_vlans
        request(:get_possible_inside_vlans, Array[Softlayer::Network::Vlan])
      end

      def get_private_ip_address
        request(:get_private_ip_address, Softlayer::Network::Subnet::IpAddress)
      end

      def get_private_vlan
        request(:get_private_vlan, Softlayer::Network::Vlan)
      end

      def get_public_ip_address
        request(:get_public_ip_address, Softlayer::Network::Subnet::IpAddress)
      end

      def get_public_ipv6_address
        request(:get_public_ipv6_address, Softlayer::Network::Subnet::IpAddress)
      end

      def get_public_vlan
        request(:get_public_vlan, Softlayer::Network::Vlan)
      end

      def get_status
        request(:get_status, Softlayer::Network::Gateway::Status)
      end

      def unbypass_all_vlans
        request(:unbypass_all_vlans, nil)
      end

      def unbypass_vlans(vlans = nil)
        message = {vlans: vlans}
        request(:unbypass_vlans, nil, message)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :group_number, type: Integer
        property :id, type: Integer
        property :name, type: String
        property :network_space, type: String
        property :private_ip_address_id, type: Integer
        property :private_vlan_id, type: Integer
        property :public_ip_address_id, type: Integer
        property :public_ipv6_address_id, type: Integer
        property :public_vlan_id, type: Integer
        property :status_id, type: Integer
        property :inside_vlan_count, type: BigDecimal
        property :member_count, type: BigDecimal
      end
    end
  end
end
