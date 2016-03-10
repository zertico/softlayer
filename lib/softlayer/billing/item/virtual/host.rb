module Softlayer
  module Billing
    class Item
      module Virtual
        module Host
          autoload :Usage, 'softlayer/billing/item/virtual/host/usage'
        end
      end
    end
  end
end
