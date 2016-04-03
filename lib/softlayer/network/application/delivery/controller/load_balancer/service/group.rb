module Softlayer
  class Network
    module Application
      module Delivery
        class Controller
          module LoadBalancer
            class Service
              class Group < Softlayer::Entity
                SERVICE = 'SoftLayer_Network_Application_Delivery_Controller_LoadBalancer_Service_Group'
                autoload :CrossReference, 'softlayer/network/application/delivery/controller/load_balancer/service/group/cross_reference'
                attr_accessor :id
                attr_accessor :name
                attr_accessor :notes
                attr_accessor :routing_method_id
                attr_accessor :routing_type_id
                attr_accessor :timeout
                attr_accessor :service_count
                attr_accessor :service_reference_count
                attr_accessor :virtual_server_count
                attr_accessor :routing_method
                attr_accessor :routing_type
                attr_accessor :service_references
                attr_accessor :services
                attr_accessor :virtual_servers

                # graph_type
                # metric
                def get_graph_image(message)
                  request(:get_graph_image, Softlayer::Base64Binary, message)
                end

                def get_object
                  request(:get_object, Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Service::Group)
                end

                def get_routing_method
                  request(:get_routing_method, Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Routing::Method)
                end

                def get_routing_type
                  request(:get_routing_type, Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Routing::Type)
                end

                def get_service_references
                  request(:get_service_references, Array[Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Service::Group::CrossReference])
                end

                def get_services
                  request(:get_services, Array[Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Service])
                end

                def get_virtual_servers
                  request(:get_virtual_servers, Array[Softlayer::Network::Application::Delivery::Controller::LoadBalancer::VirtualServer])
                end

                def kick_all_connections
                  request(:kick_all_connections, Boolean)
                end

                class Representer < Softlayer::Entity::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :id, type: Integer
                  property :name, type: String
                  property :notes, type: String
                  property :routing_method_id, type: Integer
                  property :routing_type_id, type: Integer
                  property :timeout, type: Integer
                  property :service_count, type: BigDecimal
                  property :service_reference_count, type: BigDecimal
                  property :virtual_server_count, type: BigDecimal
                end
              end
            end
          end
        end
      end
    end
  end
end
