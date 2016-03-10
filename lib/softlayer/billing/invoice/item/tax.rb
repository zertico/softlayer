module Softlayer
  module Billing
    class Invoice
      class Item
        module Tax
          autoload :Info, 'softlayer/billing/invoice/item/tax/info'
        end
      end
    end
  end
end
