module Softlayer
  class Network
    module Application
      module Delivery
        class Controller
          module LoadBalancer
            module Health
              class Attribute < Softlayer::Entity
                SERVICE = 'SoftLayer_Network_Application_Delivery_Controller_LoadBalancer_Health_Attribute'
                autoload :Type, 'softlayer/network/application/delivery/controller/load_balancer/health/attribute/type'
                attr_accessor :health_attribute_type_id
                attr_accessor :health_check_id
                attr_accessor :id
                attr_accessor :value
                attr_accessor :health_check
                attr_accessor :type

                def get_health_check
                  request(:get_health_check, Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Health::Check)
                end

                def get_object
                  request(:get_object, Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Health::Attribute)
                end

                def get_type
                  request(:get_type, Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Health::Attribute::Type)
                end

                class Representer < Softlayer::Entity::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :health_attribute_type_id, type: Integer
                  property :health_check_id, type: Integer
                  property :id, type: Integer
                  property :value, type: String
                end
              end
            end
          end
        end
      end
    end
  end
end
