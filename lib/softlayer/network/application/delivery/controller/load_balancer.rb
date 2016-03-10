module Softlayer
  module Network
    module Application
      module Delivery
        class Controller
          module LoadBalancer
            autoload :Service, 'softlayer/network/application/delivery/controller/load_balancer/service'
            autoload :VirtualIpAddress, 'softlayer/network/application/delivery/controller/load_balancer/virtual_ip_address'
            autoload :VirtualServer, 'softlayer/network/application/delivery/controller/load_balancer/virtual_server'
            autoload :Health, 'softlayer/network/application/delivery/controller/load_balancer/health'
            autoload :Routing, 'softlayer/network/application/delivery/controller/load_balancer/routing'
          end
        end
      end
    end
  end
end
