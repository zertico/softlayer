module Softlayer
  module Billing
    class Invoice
      module Receivable
        autoload :Payment, 'softlayer/billing/invoice/receivable/payment'
      end
    end
  end
end
