module Softlayer
  module Network
    module Application
      module Delivery
        class Controller
          module LoadBalancer
            module Health
              autoload :Attribute, 'softlayer/network/application/delivery/controller/load_balancer/health/attribute'
              autoload :Check, 'softlayer/network/application/delivery/controller/load_balancer/health/check'
            end
          end
        end
      end
    end
  end
end
