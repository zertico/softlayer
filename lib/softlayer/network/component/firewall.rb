module Softlayer
  class Network
    class Component
      class Firewall < Softlayer::Entity
        SERVICE = 'SoftLayer_Network_Component_Firewall'
        autoload :Rule, 'softlayer/network/component/firewall/rule'
        autoload :Subnets, 'softlayer/network/component/firewall/subnets'
        attr_accessor :guest_network_component_id
        attr_accessor :id
        attr_accessor :network_component_id
        attr_accessor :status
        attr_accessor :apply_server_rule_subnet_count
        attr_accessor :network_firewall_update_request_count
        attr_accessor :rule_count
        attr_accessor :subnet_count
        attr_accessor :apply_server_rule_subnets
        attr_accessor :billing_item
        attr_accessor :guest_network_component
        attr_accessor :network_component
        attr_accessor :network_firewall_update_request
        attr_accessor :rules
        attr_accessor :subnets

        def get_apply_server_rule_subnets
          request(:get_apply_server_rule_subnets, Array[Softlayer::Network::Subnet])
        end

        def get_billing_item
          request(:get_billing_item, Softlayer::Billing::Item)
        end

        def get_guest_network_component
          request(:get_guest_network_component, Softlayer::Virtual::Guest::Network::Component)
        end

        def get_network_component
          request(:get_network_component, Softlayer::Network::Component)
        end

        def get_network_firewall_update_request
          request(:get_network_firewall_update_request, Array[Softlayer::Network::Firewall::Update::Request])
        end

        def get_object
          request(:get_object, Softlayer::Network::Component::Firewall)
        end

        def get_rules
          request(:get_rules, Array[Softlayer::Network::Component::Firewall::Rule])
        end

        def get_subnets
          request(:get_subnets, Array[Softlayer::Network::Subnet])
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :guest_network_component_id, type: Integer
          property :id, type: Integer
          property :network_component_id, type: Integer
          property :status, type: String
          property :apply_server_rule_subnet_count, type: BigDecimal
          property :network_firewall_update_request_count, type: BigDecimal
          property :rule_count, type: BigDecimal
          property :subnet_count, type: BigDecimal
        end
      end
    end
  end
end
