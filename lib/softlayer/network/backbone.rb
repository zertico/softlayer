module Softlayer
  class Network
    class Backbone < Softlayer::Model
      SERVICE = 'SoftLayer_Network_Backbone'
      autoload :Location, 'softlayer/network/backbone/location'
      attr_accessor :capacity
      attr_accessor :capacity_units
      attr_accessor :id
      attr_accessor :name
      attr_accessor :network_component_id
      attr_accessor :type
      attr_accessor :health
      attr_accessor :location
      attr_accessor :network_component

      def self.get_all_backbones
        request(:get_all_backbones, Array[Softlayer::Network::Backbone])
      end

      def self.get_backbones_for_location_name(location_name = nil)
        message = {location_name: location_name}
        request(:get_backbones_for_location_name, Array[Softlayer::Network::Backbone], message)
      end

      def get_graph_image
        request(:get_graph_image, Softlayer::Base64Binary)
      end

      def get_health
        request(:get_health, String)
      end

      def get_location
        request(:get_location, Softlayer::Location)
      end

      def get_network_component
        request(:get_network_component, Softlayer::Network::Component)
      end

      def get_object
        request(:get_object, Softlayer::Network::Backbone)
      end

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :capacity, type: Integer
        property :capacity_units, type: String
        property :id, type: Integer
        property :name, type: String
        property :network_component_id, type: Integer
        property :type, type: String
        property :health, type: String
      end
    end
  end
end
