module Softlayer
  class Network
    module Firewall
      module Update
        class Request
          class Rule < Softlayer::Entity
            SERVICE = 'SoftLayer_Network_Firewall_Update_Request_Rule'
            autoload :Version6, 'softlayer/network/firewall/update/request/rule/version6'
            attr_accessor :action
            attr_accessor :destination_ip_address
            attr_accessor :destination_ip_cidr
            attr_accessor :destination_ip_subnet_mask
            attr_accessor :destination_port_range_end
            attr_accessor :destination_port_range_start
            attr_accessor :firewall_update_request_id
            attr_accessor :id
            attr_accessor :notes
            attr_accessor :order_value
            attr_accessor :protocol
            attr_accessor :source_ip_address
            attr_accessor :source_ip_cidr
            attr_accessor :source_ip_subnet_mask
            attr_accessor :version
            attr_accessor :firewall_update_request

            def self.create_object(template_object = nil)
              message = {template_object: template_object}
              request(:create_object, Softlayer::Network::Firewall::Update::Request::Rule, message)
            end

            def get_firewall_update_request
              request(:get_firewall_update_request, Softlayer::Network::Firewall::Update::Request)
            end

            def get_object
              request(:get_object, Softlayer::Network::Firewall::Update::Request::Rule)
            end

            def self.validate_rule(rule = nil, apply_to_component_id = nil, apply_to_acl_id = nil)
              message = {rule: rule, apply_to_component_id: apply_to_component_id, apply_to_acl_id: apply_to_acl_id}
              request(:validate_rule, nil, message)
            end

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :action, type: String
              property :destination_ip_address, type: String
              property :destination_ip_cidr, type: Integer
              property :destination_ip_subnet_mask, type: String
              property :destination_port_range_end, type: Integer
              property :destination_port_range_start, type: Integer
              property :firewall_update_request_id, type: Integer
              property :id, type: Integer
              property :notes, type: String
              property :order_value, type: Integer
              property :protocol, type: String
              property :source_ip_address, type: String
              property :source_ip_cidr, type: Integer
              property :source_ip_subnet_mask, type: String
              property :version, type: Integer
            end
          end
        end
      end
    end
  end
end
