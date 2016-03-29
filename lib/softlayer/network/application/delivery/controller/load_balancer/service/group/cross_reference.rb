module Softlayer
  class Network
    module Application
      module Delivery
        class Controller
          module LoadBalancer
            class Service
              class Group
                class CrossReference < Softlayer::Entity
                  attr_accessor :service_group_id
                  attr_accessor :service_id
                  attr_accessor :weight
                  attr_accessor :service
                  attr_accessor :service_group

                  class Representer < Softlayer::Entity::Representer
                    include Representable::Hash
                    include Representable::Coercion
                    property :service_group_id, type: Integer
                    property :service_id, type: Integer
                    property :weight, type: Integer
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
