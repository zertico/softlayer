module Softlayer
  class Network
    class Gateway
      class Vlan < Softlayer::Model
        SERVICE = 'SoftLayer_Network_Gateway_Vlan'
        attr_accessor :bypass_flag
        attr_accessor :id
        attr_accessor :network_gateway_id
        attr_accessor :network_vlan_id
        attr_accessor :network_gateway
        attr_accessor :network_vlan

        def bypass
          request(:bypass, nil)
        end

        def self.create_object(template_object = nil)
          message = {template_object: template_object}
          request(:create_object, Softlayer::Network::Gateway::Vlan, message)
        end

        def self.create_objects(template_objects = nil)
          message = {template_objects: template_objects}
          request(:create_objects, Array[Softlayer::Network::Gateway::Vlan], message)
        end

        def delete_object
          request(:delete_object, nil)
        end

        def self.delete_objects(template_objects = nil)
          message = {template_objects: template_objects}
          request(:delete_objects, Boolean, message)
        end

        def get_network_gateway
          request(:get_network_gateway, Softlayer::Network::Gateway)
        end

        def get_network_vlan
          request(:get_network_vlan, Softlayer::Network::Vlan)
        end

        def get_object
          request(:get_object, Softlayer::Network::Gateway::Vlan)
        end

        def unbypass
          request(:unbypass, nil)
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :bypass_flag, type: Boolean
          property :id, type: Integer
          property :network_gateway_id, type: Integer
          property :network_vlan_id, type: Integer
        end
      end
    end
  end
end
