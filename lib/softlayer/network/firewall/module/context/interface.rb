module Softlayer
  class Network
    module Firewall
      module Module
        module Context
          class Interface < Softlayer::Model
            SERVICE = 'SoftLayer_Network_Firewall_Module_Context_Interface'
            attr_accessor :id
            attr_accessor :name
            attr_accessor :firewall_context_access_control_list_count
            attr_accessor :firewall_context_access_control_lists
            attr_accessor :network_vlan

            def get_firewall_context_access_control_lists
              request(:get_firewall_context_access_control_lists, Array[Softlayer::Network::Firewall::AccessControlList])
            end

            def get_network_vlan
              request(:get_network_vlan, Softlayer::Network::Vlan)
            end

            def get_object
              request(:get_object, Softlayer::Network::Firewall::Module::Context::Interface)
            end

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :id, type: Integer
              property :name, type: String
              property :firewall_context_access_control_list_count, type: BigDecimal
            end
          end
        end
      end
    end
  end
end
