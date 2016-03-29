module Softlayer
  class Network
    module Application
      module Delivery
        class Controller
          module LoadBalancer
            module Health
              class Check < Softlayer::Entity
                SERVICE = 'SoftLayer_Network_Application_Delivery_Controller_LoadBalancer_Health_Check'
                autoload :Type, 'softlayer/network/application/delivery/controller/load_balancer/health/check/type'
                attr_accessor :health_check_type_id
                attr_accessor :id
                attr_accessor :name
                attr_accessor :notes
                attr_accessor :attribute_count
                attr_accessor :scale_load_balancer_count
                attr_accessor :service_count
                attr_accessor :attributes
                attr_accessor :scale_load_balancers
                attr_accessor :services
                attr_accessor :type

                def get_attributes
                  request(:get_attributes, Array[Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Health::Attribute])
                end

                def get_object
                  request(:get_object, Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Health::Check)
                end

                def get_scale_load_balancers
                  request(:get_scale_load_balancers, Array[Softlayer::Scale::LoadBalancer])
                end

                def get_services
                  request(:get_services, Array[Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Service])
                end

                def get_type
                  request(:get_type, Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Health::Check::Type)
                end

                class Representer < Softlayer::Entity::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :health_check_type_id, type: Integer
                  property :id, type: Integer
                  property :name, type: String
                  property :notes, type: String
                  property :attribute_count, type: BigDecimal
                  property :scale_load_balancer_count, type: BigDecimal
                  property :service_count, type: BigDecimal
                end
              end
            end
          end
        end
      end
    end
  end
end
