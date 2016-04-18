module Softlayer
  module Billing
    module Payment
      autoload :Processor, 'softlayer/billing/payment/processor'
      autoload :Transaction, 'softlayer/billing/payment/transaction'
      autoload :Type, 'softlayer/billing/payment/type'
      autoload :Card, 'softlayer/billing/payment/card'
      autoload :PayPal, 'softlayer/billing/payment/pay_pal'
    end
  end
end
