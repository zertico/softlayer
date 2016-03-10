module Softlayer
  class Network
    module Firewall
      class Interface < Softlayer::Network::Firewall::Module::Context::Interface
        SERVICE = 'SoftLayer_Network_Firewall_Interface'

        def get_firewall_context_access_control_lists
          request(:get_firewall_context_access_control_lists, Array[Softlayer::Network::Firewall::AccessControlList])
        end

        def get_network_vlan
          request(:get_network_vlan, Softlayer::Network::Vlan)
        end

        def get_object
          request(:get_object, Softlayer::Network::Firewall::Interface)
        end

        class Representer < Softlayer::Network::Firewall::Module::Context::Interface::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
