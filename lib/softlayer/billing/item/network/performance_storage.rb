module Softlayer
  module Billing
    class Item
      module Network
        module PerformanceStorage
          autoload :Iscsi, 'softlayer/billing/item/network/performance_storage/iscsi'
          autoload :Nfs, 'softlayer/billing/item/network/performance_storage/nfs'
        end
      end
    end
  end
end
