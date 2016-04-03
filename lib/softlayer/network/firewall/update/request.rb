module Softlayer
  class Network
    module Firewall
      module Update
        class Request < Softlayer::Entity
          SERVICE = 'SoftLayer_Network_Firewall_Update_Request'
          autoload :Customer, 'softlayer/network/firewall/update/request/customer'
          autoload :Employee, 'softlayer/network/firewall/update/request/employee'
          autoload :Rule, 'softlayer/network/firewall/update/request/rule'
          attr_accessor :apply_date
          attr_accessor :authorizing_user_id
          attr_accessor :authorizing_user_type
          attr_accessor :bypass_flag
          attr_accessor :create_date
          attr_accessor :firewall_context_access_control_list_id
          attr_accessor :hardware_id
          attr_accessor :id
          attr_accessor :network_component_firewall_id
          attr_accessor :rule_count
          attr_accessor :authorizing_user
          attr_accessor :guest
          attr_accessor :hardware
          attr_accessor :network_component_firewall
          attr_accessor :rules

          # template_object
          def self.create_object(message)
            request(:create_object, Softlayer::Network::Firewall::Update::Request, message)
          end

          def get_authorizing_user
            request(:get_authorizing_user, Softlayer::User::Interface)
          end

          def self.get_firewall_update_request_rule_attributes
            request(:get_firewall_update_request_rule_attributes, Softlayer::Container::Utility::Network::Firewall::Rule::Attribute)
          end

          def get_guest
            request(:get_guest, Softlayer::Virtual::Guest)
          end

          def get_hardware
            request(:get_hardware, Softlayer::Hardware)
          end

          def get_network_component_firewall
            request(:get_network_component_firewall, Softlayer::Network::Component::Firewall)
          end

          def get_object
            request(:get_object, Softlayer::Network::Firewall::Update::Request)
          end

          def get_rules
            request(:get_rules, Array[Softlayer::Network::Firewall::Update::Request::Rule])
          end

          # fw_rule
          # note
          def self.update_rule_note(message)
            request(:update_rule_note, Boolean, message)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :apply_date, type: DateTime
            property :authorizing_user_id, type: Integer
            property :authorizing_user_type, type: String
            property :bypass_flag, type: Boolean
            property :create_date, type: DateTime
            property :firewall_context_access_control_list_id, type: Integer
            property :hardware_id, type: Integer
            property :id, type: Integer
            property :network_component_firewall_id, type: Integer
            property :rule_count, type: BigDecimal
          end
        end
      end
    end
  end
end
