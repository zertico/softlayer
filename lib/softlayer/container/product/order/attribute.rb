module Softlayer
  module Container
    module Product
      class Order
        module Attribute
          autoload :Address, 'softlayer/container/product/order/attribute/address'
          autoload :Contact, 'softlayer/container/product/order/attribute/contact'
          autoload :Organization, 'softlayer/container/product/order/attribute/organization'
        end
      end
    end
  end
end
