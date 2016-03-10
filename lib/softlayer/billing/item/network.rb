module Softlayer
  module Billing
    class Item
      module Network
        autoload :Bandwidth, 'softlayer/billing/item/network/bandwidth'
        autoload :Firewall, 'softlayer/billing/item/network/firewall'
        autoload :Interconnect, 'softlayer/billing/item/network/interconnect'
        autoload :LoadBalancer, 'softlayer/billing/item/network/load_balancer'
        autoload :Storage, 'softlayer/billing/item/network/storage'
        autoload :Subnet, 'softlayer/billing/item/network/subnet'
        autoload :Tunnel, 'softlayer/billing/item/network/tunnel'
        autoload :Vlan, 'softlayer/billing/item/network/vlan'
        autoload :Application, 'softlayer/billing/item/network/application'
        autoload :Message, 'softlayer/billing/item/network/message'
        autoload :PerformanceStorage, 'softlayer/billing/item/network/performance_storage'
      end
    end
  end
end
