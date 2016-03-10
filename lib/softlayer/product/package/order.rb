module Softlayer
  module Product
    class Package
      module Order
        autoload :Configuration, 'softlayer/product/package/order/configuration'
        autoload :Step, 'softlayer/product/package/order/step'
      end
    end
  end
end
