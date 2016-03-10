module Softlayer
  module Billing
    class Invoice
      module Tax
        autoload :Info, 'softlayer/billing/invoice/tax/info'
        autoload :Status, 'softlayer/billing/invoice/tax/status'
        autoload :Type, 'softlayer/billing/invoice/tax/type'
      end
    end
  end
end
