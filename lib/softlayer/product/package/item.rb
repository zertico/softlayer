module Softlayer
  module Product
    class Package
      module Item
        autoload :Prices, 'softlayer/product/package/item/prices'
        autoload :Category, 'softlayer/product/package/item/category'
      end
    end
  end
end
