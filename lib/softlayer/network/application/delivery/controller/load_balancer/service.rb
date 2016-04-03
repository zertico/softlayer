module Softlayer
  class Network
    module Application
      module Delivery
        class Controller
          module LoadBalancer
            class Service < Softlayer::Entity
              SERVICE = 'SoftLayer_Network_Application_Delivery_Controller_LoadBalancer_Service'
              autoload :Group, 'softlayer/network/application/delivery/controller/load_balancer/service/group'
              attr_accessor :enabled
              attr_accessor :id
              attr_accessor :ip_address_id
              attr_accessor :name
              attr_accessor :notes
              attr_accessor :port
              attr_accessor :status
              attr_accessor :group_count
              attr_accessor :group_reference_count
              attr_accessor :health_check_count
              attr_accessor :group_references
              attr_accessor :groups
              attr_accessor :health_checks
              attr_accessor :ip_address

              def delete_object
                request(:delete_object, Boolean)
              end

              # graph_type
              # metric
              def get_graph_image(message)
                request(:get_graph_image, Softlayer::Base64Binary, message)
              end

              def get_group_references
                request(:get_group_references, Array[Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Service::Group::CrossReference])
              end

              def get_groups
                request(:get_groups, Array[Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Service::Group])
              end

              def get_health_checks
                request(:get_health_checks, Array[Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Health::Check])
              end

              def get_ip_address
                request(:get_ip_address, Softlayer::Network::Subnet::IpAddress)
              end

              def get_object
                request(:get_object, Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Service)
              end

              def toggle_status
                request(:toggle_status, Boolean)
              end

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :enabled, type: Integer
                property :id, type: Integer
                property :ip_address_id, type: Integer
                property :name, type: String
                property :notes, type: String
                property :port, type: Integer
                property :status, type: String
                property :group_count, type: BigDecimal
                property :group_reference_count, type: BigDecimal
                property :health_check_count, type: BigDecimal
              end
            end
          end
        end
      end
    end
  end
end
