module Softlayer
  class Network
    class Vlan
      class Firewall < Softlayer::Entity
        SERVICE = 'SoftLayer_Network_Vlan_Firewall'
        autoload :Rule, 'softlayer/network/vlan/firewall/rule'
        attr_accessor :administrative_bypass_flag
        attr_accessor :customer_managed_flag
        attr_accessor :id
        attr_accessor :primary_ip_address
        attr_accessor :network_firewall_update_request_count
        attr_accessor :network_vlan_count
        attr_accessor :rule_count
        attr_accessor :tag_reference_count
        attr_accessor :billing_item
        attr_accessor :datacenter
        attr_accessor :firewall_type
        attr_accessor :fully_qualified_domain_name
        attr_accessor :management_credentials
        attr_accessor :network_firewall_update_requests
        attr_accessor :network_vlan
        attr_accessor :network_vlans
        attr_accessor :rules
        attr_accessor :tag_references

        def get_billing_item
          request(:get_billing_item, Softlayer::Billing::Item)
        end

        def get_datacenter
          request(:get_datacenter, Softlayer::Location)
        end

        def get_firewall_type
          request(:get_firewall_type, String)
        end

        def get_fully_qualified_domain_name
          request(:get_fully_qualified_domain_name, String)
        end

        def get_management_credentials
          request(:get_management_credentials, Softlayer::Software::Component::Password)
        end

        def get_network_firewall_update_requests
          request(:get_network_firewall_update_requests, Array[Softlayer::Network::Firewall::Update::Request])
        end

        def get_network_vlan
          request(:get_network_vlan, Softlayer::Network::Vlan)
        end

        def get_network_vlans
          request(:get_network_vlans, Array[Softlayer::Network::Vlan])
        end

        def get_object
          request(:get_object, Softlayer::Network::Vlan::Firewall)
        end

        def get_rules
          request(:get_rules, Array[Softlayer::Network::Vlan::Firewall::Rule])
        end

        def get_tag_references
          request(:get_tag_references, Array[Softlayer::Tag::Reference])
        end

        def restore_defaults
          request(:restore_defaults, Softlayer::Provisioning::Version1::Transaction)
        end

        def set_tags(tags = nil)
          message = {tags: tags}
          request(:set_tags, Boolean, message)
        end

        def update_route_bypass(bypass = nil)
          message = {bypass: bypass}
          request(:update_route_bypass, Softlayer::Provisioning::Version1::Transaction, message)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :administrative_bypass_flag, type: String
          property :customer_managed_flag, type: Boolean
          property :id, type: Integer
          property :primary_ip_address, type: String
          property :network_firewall_update_request_count, type: BigDecimal
          property :network_vlan_count, type: BigDecimal
          property :rule_count, type: BigDecimal
          property :tag_reference_count, type: BigDecimal
          property :firewall_type, type: String
          property :fully_qualified_domain_name, type: String
        end
      end
    end
  end
end
