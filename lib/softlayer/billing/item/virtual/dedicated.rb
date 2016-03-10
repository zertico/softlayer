module Softlayer
  module Billing
    class Item
      module Virtual
        module Dedicated
          autoload :Rack, 'softlayer/billing/item/virtual/dedicated/rack'
        end
      end
    end
  end
end
