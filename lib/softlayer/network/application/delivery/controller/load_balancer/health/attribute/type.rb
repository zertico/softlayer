module Softlayer
  class Network
    module Application
      module Delivery
        class Controller
          module LoadBalancer
            module Health
              class Attribute
                class Type < Softlayer::Model
                  SERVICE = 'SoftLayer_Network_Application_Delivery_Controller_LoadBalancer_Health_Attribute_Type'
                  attr_accessor :description
                  attr_accessor :id
                  attr_accessor :keyname
                  attr_accessor :name
                  attr_accessor :value_expression

                  def self.get_all_objects
                    request(:get_all_objects, Array[Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Health::Attribute::Type])
                  end

                  def get_object
                    request(:get_object, Softlayer::Network::Application::Delivery::Controller::LoadBalancer::Health::Attribute::Type)
                  end

                  class Representer < Representable::Decorator
                    include Representable::Hash
                    include Representable::Coercion
                    property :description, type: String
                    property :id, type: Integer
                    property :keyname, type: String
                    property :name, type: String
                    property :value_expression, type: String
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
