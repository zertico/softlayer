module Softlayer
  module Billing
    module Payment
      module Card
        autoload :ChangeRequest, 'softlayer/billing/payment/card/change_request'
        autoload :ManualPayment, 'softlayer/billing/payment/card/manual_payment'
        autoload :Transaction, 'softlayer/billing/payment/card/transaction'
      end
    end
  end
end
