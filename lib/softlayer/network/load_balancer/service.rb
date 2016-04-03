module Softlayer
  class Network
    module LoadBalancer
      class Service < Softlayer::Entity
        SERVICE = 'SoftLayer_Network_LoadBalancer_Service'
        attr_accessor :connection_limit
        attr_accessor :create_date
        attr_accessor :destination_ip_address
        attr_accessor :destination_port
        attr_accessor :enabled
        attr_accessor :health_check
        attr_accessor :health_check_url
        attr_accessor :health_response
        attr_accessor :id
        attr_accessor :modify_date
        attr_accessor :name
        attr_accessor :notes
        attr_accessor :peak_connections
        attr_accessor :source_port
        attr_accessor :type
        attr_accessor :vip_id
        attr_accessor :weight
        attr_accessor :vip

        def delete_object
          request(:delete_object, Boolean)
        end

        # graph_type
        # metric
        def get_graph_image(message)
          request(:get_graph_image, Softlayer::Base64Binary, message)
        end

        def get_object
          request(:get_object, Softlayer::Network::LoadBalancer::Service)
        end

        def get_status
          request(:get_status, Array[Softlayer::Container::Network::LoadBalancer::StatusEntry])
        end

        def get_vip
          request(:get_vip, Softlayer::Network::LoadBalancer::VirtualIpAddress)
        end

        def reset_peak_connections
          request(:reset_peak_connections, Boolean)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :connection_limit, type: Integer
          property :create_date, type: DateTime
          property :destination_ip_address, type: String
          property :destination_port, type: Integer
          property :enabled, type: Boolean
          property :health_check, type: String
          property :health_check_url, type: String
          property :health_response, type: String
          property :id, type: Integer
          property :modify_date, type: DateTime
          property :name, type: String
          property :notes, type: String
          property :peak_connections, type: Integer
          property :source_port, type: Integer
          property :type, type: String
          property :vip_id, type: Integer
          property :weight, type: Integer
        end
      end
    end
  end
end
