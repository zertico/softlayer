module Softlayer
  module Billing
    class Item
      module Cancellation
        autoload :Reason, 'softlayer/billing/item/cancellation/reason'
        autoload :Request, 'softlayer/billing/item/cancellation/request'
      end
    end
  end
end
