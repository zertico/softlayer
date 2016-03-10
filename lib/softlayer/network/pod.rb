module Softlayer
  class Network
    class Pod < Softlayer::Model
      SERVICE = 'SoftLayer_Network_Pod'
      attr_accessor :backend_router_id
      attr_accessor :backend_router_name
      attr_accessor :capabilities
      attr_accessor :datacenter_long_name
      attr_accessor :datacenter_name
      attr_accessor :frontend_router_id
      attr_accessor :frontend_router_name
      attr_accessor :name

      def self.get_all_objects
        request(:get_all_objects, Array[Softlayer::Network::Pod])
      end

      def get_capabilities
        request(:get_capabilities, Array[String])
      end

      def get_object
        request(:get_object, Softlayer::Network::Pod)
      end

      def self.list_capabilities
        request(:list_capabilities, Array[String])
      end

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :backend_router_id, type: Integer
        property :backend_router_name, type: String
        property :datacenter_long_name, type: String
        property :datacenter_name, type: String
        property :frontend_router_id, type: Integer
        property :frontend_router_name, type: String
        property :name, type: String
      end
    end
  end
end
