module Softlayer
  module Container
    module Product
      class Order
        class Network < Softlayer::Entity
          autoload :LoadBalancer, 'softlayer/container/product/order/network/load_balancer'
          autoload :PerformanceStorage, 'softlayer/container/product/order/network/performance_storage'
          autoload :Subnet, 'softlayer/container/product/order/network/subnet'
          autoload :Vlan, 'softlayer/container/product/order/network/vlan'
          autoload :Vlans, 'softlayer/container/product/order/network/vlans'
          autoload :Application, 'softlayer/container/product/order/network/application'
          autoload :ContentDelivery, 'softlayer/container/product/order/network/content_delivery'
          autoload :Message, 'softlayer/container/product/order/network/message'
          autoload :Protection, 'softlayer/container/product/order/network/protection'
          autoload :Storage, 'softlayer/container/product/order/network/storage'
          autoload :Tunnel, 'softlayer/container/product/order/network/tunnel'
          attr_accessor :network
          attr_accessor :public_vlans
          attr_accessor :subnets

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
