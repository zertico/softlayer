module Softlayer
  module Billing
    class Item
      module Software
        autoload :Component, 'softlayer/billing/item/software/component'
        autoload :License, 'softlayer/billing/item/software/license'
      end
    end
  end
end
