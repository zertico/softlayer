module Softlayer
  module Network
    module LoadBalancer
      autoload :Service, 'softlayer/network/load_balancer/service'
      autoload :VirtualIpAddress, 'softlayer/network/load_balancer/virtual_ip_address'
      autoload :Global, 'softlayer/network/load_balancer/global'
    end
  end
end
