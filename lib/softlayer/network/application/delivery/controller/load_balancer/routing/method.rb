module Softlayer
  class Network
    module Application
      module Delivery
        class Controller
          module LoadBalancer
            module Routing
              class Method < Softlayer::Entity
                SERVICE = 'SoftLayer_Network_Application_Delivery_Controller_LoadBalancer_Routing_Method'
                attr_accessor :id
                attr_accessor :keyname
                attr_accessor :name

                def self.get_all_objects
                  request(:get_all_objects, Array[Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Routing::Method])
                end

                def get_object
                  request(:get_object, Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Routing::Method)
                end

                class Representer < Softlayer::Entity::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :id, type: Integer
                  property :keyname, type: String
                  property :name, type: String
                end
              end
            end
          end
        end
      end
    end
  end
end
