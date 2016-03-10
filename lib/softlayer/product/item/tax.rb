module Softlayer
  module Product
    class Item
      module Tax
        autoload :Category, 'softlayer/product/item/tax/category'
      end
    end
  end
end
