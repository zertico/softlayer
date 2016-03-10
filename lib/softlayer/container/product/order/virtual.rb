module Softlayer
  module Container
    module Product
      class Order
        module Virtual
          autoload :Guest, 'softlayer/container/product/order/virtual/guest'
          autoload :Disk, 'softlayer/container/product/order/virtual/disk'
        end
      end
    end
  end
end
