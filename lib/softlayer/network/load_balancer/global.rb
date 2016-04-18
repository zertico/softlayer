module Softlayer
  class Network
    module LoadBalancer
      module Global
        autoload :Account, 'softlayer/network/load_balancer/global/account'
        autoload :Host, 'softlayer/network/load_balancer/global/host'
        autoload :Type, 'softlayer/network/load_balancer/global/type'
      end
    end
  end
end
