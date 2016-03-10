module Softlayer
  module Billing
    class Item
      module Network
        module Message
          autoload :Delivery, 'softlayer/billing/item/network/message/delivery'
          autoload :Queue, 'softlayer/billing/item/network/message/queue'
        end
      end
    end
  end
end
