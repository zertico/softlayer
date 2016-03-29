module Softlayer
  module Virtual
    class Guest
      module Network
        class Component < Softlayer::Entity
          SERVICE = 'SoftLayer_Virtual_Guest_Network_Component'
          autoload :IpAddress, 'softlayer/virtual/guest/network/component/ip_address'
          attr_accessor :create_date
          attr_accessor :guest_id
          attr_accessor :id
          attr_accessor :mac_address
          attr_accessor :max_speed
          attr_accessor :modify_date
          attr_accessor :name
          attr_accessor :network_id
          attr_accessor :port
          attr_accessor :speed
          attr_accessor :status
          attr_accessor :uuid
          attr_accessor :ip_address_binding_count
          attr_accessor :subnet_count
          attr_accessor :guest
          attr_accessor :high_availability_firewall_flag
          attr_accessor :ip_address_bindings
          attr_accessor :network_component_firewall
          attr_accessor :network_vlan
          attr_accessor :primary_ip_address
          attr_accessor :primary_ip_address_record
          attr_accessor :primary_subnet
          attr_accessor :primary_version6_ip_address_record
          attr_accessor :router
          attr_accessor :subnets

          def disable
            request(:disable, Boolean)
          end

          def enable
            request(:enable, Boolean)
          end

          def get_guest
            request(:get_guest, Softlayer::Virtual::Guest)
          end

          def get_high_availability_firewall_flag
            request(:get_high_availability_firewall_flag, Boolean)
          end

          def get_ip_address_bindings
            request(:get_ip_address_bindings, Array[Softlayer::Virtual::Guest::Network::Component::IpAddress])
          end

          def get_network_component_firewall
            request(:get_network_component_firewall, Softlayer::Network::Component::Firewall)
          end

          def get_network_vlan
            request(:get_network_vlan, Softlayer::Network::Vlan)
          end

          def get_object
            request(:get_object, Softlayer::Virtual::Guest::Network::Component)
          end

          def get_primary_ip_address
            request(:get_primary_ip_address, String)
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

          def get_router
            request(:get_router, Softlayer::Hardware::Router)
          end

          def get_subnets
            request(:get_subnets, Array[Softlayer::Network::Subnet])
          end

          def is_pingable
            request(:is_pingable, Boolean)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :create_date, type: DateTime
            property :guest_id, type: Integer
            property :id, type: Integer
            property :mac_address, type: String
            property :max_speed, type: Integer
            property :modify_date, type: DateTime
            property :name, type: String
            property :network_id, type: Integer
            property :port, type: Integer
            property :speed, type: Integer
            property :status, type: String
            property :uuid, type: String
            property :ip_address_binding_count, type: BigDecimal
            property :subnet_count, type: BigDecimal
            property :high_availability_firewall_flag, type: Boolean
            property :primary_ip_address, type: String
          end
        end
      end
    end
  end
end
