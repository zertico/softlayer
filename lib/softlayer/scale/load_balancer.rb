module Softlayer
  module Scale
    class LoadBalancer < Softlayer::Model
      SERVICE = 'SoftLayer_Scale_LoadBalancer'
      attr_accessor :create_date
      attr_accessor :delete_flag
      attr_accessor :health_check_id
      attr_accessor :id
      attr_accessor :modify_date
      attr_accessor :port
      attr_accessor :scale_group_id
      attr_accessor :virtual_server_id
      attr_accessor :allocation_percent
      attr_accessor :health_check
      attr_accessor :routing_method
      attr_accessor :routing_type
      attr_accessor :scale_group
      attr_accessor :virtual_ip_address_id
      attr_accessor :virtual_server
      attr_accessor :virtual_server_port

      def self.create_object(template_object = nil)
        message = {template_object: template_object}
        request(:create_object, Softlayer::Scale::LoadBalancer, message)
      end

      def delete_object
        request(:delete_object, Boolean)
      end

      def edit_object(template_object = nil)
        message = {template_object: template_object}
        request(:edit_object, Boolean, message)
      end

      def get_allocation_percent
        request(:get_allocation_percent, Integer)
      end

      def get_health_check
        request(:get_health_check, Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Health::Check)
      end

      def get_object
        request(:get_object, Softlayer::Scale::LoadBalancer)
      end

      def get_routing_method
        request(:get_routing_method, Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Routing::Method)
      end

      def get_routing_type
        request(:get_routing_type, Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Routing::Type)
      end

      def get_scale_group
        request(:get_scale_group, Softlayer::Scale::Group)
      end

      def get_virtual_ip_address_id
        request(:get_virtual_ip_address_id, Integer)
      end

      def get_virtual_server
        request(:get_virtual_server, Softlayer::Network::Application::Delivery::Controller::LoadBalancer::VirtualServer)
      end

      def get_virtual_server_port
        request(:get_virtual_server_port, Integer)
      end

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :create_date, type: DateTime
        property :delete_flag, type: Boolean
        property :health_check_id, type: Integer
        property :id, type: Integer
        property :modify_date, type: DateTime
        property :port, type: Integer
        property :scale_group_id, type: Integer
        property :virtual_server_id, type: Integer
        property :allocation_percent, type: Integer
        property :virtual_ip_address_id, type: Integer
        property :virtual_server_port, type: Integer
      end
    end
  end
end
