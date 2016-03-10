module Softlayer
  module Container
    module Product
      class Order
        module Dns
          module Domain
            autoload :Registration, 'softlayer/container/product/order/dns/domain/registration'
            autoload :Reseller, 'softlayer/container/product/order/dns/domain/reseller'
          end
        end
      end
    end
  end
end
