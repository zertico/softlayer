module Softlayer
  class Network
    module Application
      module Delivery
        class Controller
          module LoadBalancer
            class VirtualServer < Softlayer::Model
              SERVICE = 'SoftLayer_Network_Application_Delivery_Controller_LoadBalancer_VirtualServer'
              attr_accessor :allocation
              attr_accessor :id
              attr_accessor :name
              attr_accessor :notes
              attr_accessor :port
              attr_accessor :routing_method_id
              attr_accessor :virtual_ip_address_id
              attr_accessor :scale_load_balancer_count
              attr_accessor :service_group_count
              attr_accessor :routing_method
              attr_accessor :scale_load_balancers
              attr_accessor :service_groups
              attr_accessor :virtual_ip_address

              def delete_object
                request(:delete_object, Boolean)
              end

              def get_object
                request(:get_object, Softlayer::Network::Application::Delivery::Controller::LoadBalancer::VirtualServer)
              end

              def get_routing_method
                request(:get_routing_method, Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Routing::Method)
              end

              def get_scale_load_balancers
                request(:get_scale_load_balancers, Array[Softlayer::Scale::LoadBalancer])
              end

              def get_service_groups
                request(:get_service_groups, Array[Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Service::Group])
              end

              def get_virtual_ip_address
                request(:get_virtual_ip_address, Softlayer::Network::Application::Delivery::Controller::LoadBalancer::VirtualIpAddress)
              end

              def start_ssl
                request(:start_ssl, Boolean)
              end

              def stop_ssl
                request(:stop_ssl, Boolean)
              end

              class Representer < Representable::Decorator
                include Representable::Hash
                include Representable::Coercion
                property :allocation, type: Integer
                property :id, type: Integer
                property :name, type: String
                property :notes, type: String
                property :port, type: Integer
                property :routing_method_id, type: Integer
                property :virtual_ip_address_id, type: Integer
                property :scale_load_balancer_count, type: BigDecimal
                property :service_group_count, type: BigDecimal
              end
            end
          end
        end
      end
    end
  end
end
