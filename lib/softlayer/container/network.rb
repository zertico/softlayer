module Softlayer
  module Container
    module Network
      autoload :Authentication, 'softlayer/container/network/authentication'
      autoload :Bandwidth, 'softlayer/container/network/bandwidth'
      autoload :ContentDelivery, 'softlayer/container/network/content_delivery'
      autoload :Directory, 'softlayer/container/network/directory'
      autoload :IntrusionProtection, 'softlayer/container/network/intrusion_protection'
      autoload :LoadBalancer, 'softlayer/container/network/load_balancer'
      autoload :Media, 'softlayer/container/network/media'
      autoload :Message, 'softlayer/container/network/message'
      autoload :Port, 'softlayer/container/network/port'
      autoload :Service, 'softlayer/container/network/service'
      autoload :Storage, 'softlayer/container/network/storage'
      autoload :Subnet, 'softlayer/container/network/subnet'
    end
  end
end
