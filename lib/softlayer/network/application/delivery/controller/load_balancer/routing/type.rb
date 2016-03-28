module Softlayer
  class Network
    module Application
      module Delivery
        class Controller
          module LoadBalancer
            module Routing
              class Type < Softlayer::Model
                SERVICE = 'SoftLayer_Network_Application_Delivery_Controller_LoadBalancer_Routing_Type'
                attr_accessor :id
                attr_accessor :keyname
                attr_accessor :name

                def self.get_all_objects
                  request(:get_all_objects, Array[Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Routing::Type])
                end

                def get_object
                  request(:get_object, Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Routing::Type)
                end

                class Representer < Representable::Decorator
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