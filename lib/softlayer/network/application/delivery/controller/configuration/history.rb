module Softlayer
  class Network
    module Application
      module Delivery
        class Controller
          module Configuration
            class History < Softlayer::Entity
              SERVICE = 'SoftLayer_Network_Application_Delivery_Controller_Configuration_History'
              attr_accessor :create_date
              attr_accessor :id
              attr_accessor :notes
              attr_accessor :controller

              def delete_object
                request(:delete_object, Boolean)
              end

              def get_controller
                request(:get_controller, Softlayer::Network::Application::Delivery::Controller)
              end

              def get_object
                request(:get_object, Softlayer::Network::Application::Delivery::Controller::Configuration::History)
              end

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :create_date, type: DateTime
                property :id, type: Integer
                property :notes, type: String
              end
            end
          end
        end
      end
    end
  end
end
