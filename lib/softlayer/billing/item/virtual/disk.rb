module Softlayer
  module Billing
    class Item
      module Virtual
        module Disk
          autoload :Image, 'softlayer/billing/item/virtual/disk/image'
        end
      end
    end
  end
end
