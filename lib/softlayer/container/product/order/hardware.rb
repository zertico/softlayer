module Softlayer
  module Container
    module Product
      class Order
        module Hardware
          autoload :Server, 'softlayer/container/product/order/hardware/server'
          autoload :Security, 'softlayer/container/product/order/hardware/security'
        end
      end
    end
  end
end
