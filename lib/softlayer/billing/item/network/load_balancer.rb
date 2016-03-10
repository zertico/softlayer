module Softlayer
  module Billing
    class Item
      module Network
        class LoadBalancer < Softlayer::Billing::Item
          autoload :Global, 'softlayer/billing/item/network/load_balancer/global'
          autoload :VirtualIpAddress, 'softlayer/billing/item/network/load_balancer/virtual_ip_address'

          class Representer < Softlayer::Billing::Item::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
