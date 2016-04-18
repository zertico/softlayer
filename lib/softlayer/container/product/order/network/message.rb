module Softlayer
  module Container
    module Product
      class Order
        class Network
          module Message
            autoload :Delivery, 'softlayer/container/product/order/network/message/delivery'
            autoload :Queue, 'softlayer/container/product/order/network/message/queue'
          end
        end
      end
    end
  end
end
