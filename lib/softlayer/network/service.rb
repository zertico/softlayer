module Softlayer
  class Network
    module Service
      autoload :Health, 'softlayer/network/service/health'
      autoload :Resource, 'softlayer/network/service/resource'
      autoload :Vpn, 'softlayer/network/service/vpn'
    end
  end
end
