module Softlayer
  class Network
    module Application
      module Delivery
        class Controller
          module LoadBalancer
            module Health
              class Check
                class Type < Softlayer::Entity
                  SERVICE = 'SoftLayer_Network_Application_Delivery_Controller_LoadBalancer_Health_Check_Type'
                  attr_accessor :id
                  attr_accessor :keyname
                  attr_accessor :name

                  def self.get_all_objects
                    request(:get_all_objects, Array[Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Health::Check::Type])
                  end

                  def get_object
                    request(:get_object, Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Health::Check::Type)
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
end
