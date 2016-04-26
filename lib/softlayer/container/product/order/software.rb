module Softlayer
  module Container
    module Product
      class Order
        module Software
          autoload :License, 'softlayer/container/product/order/software/license'
          autoload :Component, 'softlayer/container/product/order/software/component'
        end
      end
    end
  end
end
