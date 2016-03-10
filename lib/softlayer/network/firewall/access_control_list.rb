module Softlayer
  class Network
    module Firewall
      class AccessControlList < Softlayer::Model
        SERVICE = 'SoftLayer_Network_Firewall_AccessControlList'
        attr_accessor :direction
        attr_accessor :firewall_context_interface_id
        attr_accessor :id
        attr_accessor :network_firewall_update_request_count
        attr_accessor :rule_count
        attr_accessor :network_firewall_update_requests
        attr_accessor :network_vlan
        attr_accessor :rules

        def get_network_firewall_update_requests
          request(:get_network_firewall_update_requests, Array[Softlayer::Network::Firewall::Update::Request])
        end

        def get_network_vlan
          request(:get_network_vlan, Softlayer::Network::Vlan)
        end

        def get_object
          request(:get_object, Softlayer::Network::Firewall::AccessControlList)
        end

        def get_rules
          request(:get_rules, Array[Softlayer::Network::Vlan::Firewall::Rule])
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :direction, type: String
          property :firewall_context_interface_id, type: Integer
          property :id, type: Integer
          property :network_firewall_update_request_count, type: BigDecimal
          property :rule_count, type: BigDecimal
        end
      end
    end
  end
end
