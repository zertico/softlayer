module Softlayer
  module Billing
    class Item
      module Virtual
        autoload :Guest, 'softlayer/billing/item/virtual/guest'
        autoload :Dedicated, 'softlayer/billing/item/virtual/dedicated'
        autoload :Disk, 'softlayer/billing/item/virtual/disk'
        autoload :Host, 'softlayer/billing/item/virtual/host'
      end
    end
  end
end
