module Softlayer
  module Billing
    class Item
      module Gateway
        autoload :Appliance, 'softlayer/billing/item/gateway/appliance'
      end
    end
  end
end
