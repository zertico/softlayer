module Softlayer
  class Network
    class Gateway
      class Member < Softlayer::Entity
        SERVICE = 'SoftLayer_Network_Gateway_Member'
        attr_accessor :hardware_id
        attr_accessor :id
        attr_accessor :network_gateway_id
        attr_accessor :priority
        attr_accessor :hardware
        attr_accessor :network_gateway

        # template_object
        def self.create_object(message)
          request(:create_object, Softlayer::Network::Gateway::Member, message)
        end

        # template_objects
        def self.create_objects(message)
          request(:create_objects, Array[Softlayer::Network::Gateway::Member], message)
        end

        def get_hardware
          request(:get_hardware, Softlayer::Hardware)
        end

        def get_network_gateway
          request(:get_network_gateway, Softlayer::Network::Gateway)
        end

        def get_object
          request(:get_object, Softlayer::Network::Gateway::Member)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :hardware_id, type: Integer
          property :id, type: Integer
          property :network_gateway_id, type: Integer
          property :priority, type: Integer
        end
      end
    end
  end
end
