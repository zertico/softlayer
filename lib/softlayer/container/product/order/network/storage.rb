module Softlayer
  module Container
    module Product
      class Order
        class Network
          module Storage
            autoload :Enterprise, 'softlayer/container/product/order/network/storage/enterprise'
            autoload :Hub, 'softlayer/container/product/order/network/storage/hub'
            autoload :Iscsi, 'softlayer/container/product/order/network/storage/iscsi'
            autoload :Modification, 'softlayer/container/product/order/network/storage/modification'
            autoload :Nas, 'softlayer/container/product/order/network/storage/nas'
            autoload :Backup, 'softlayer/container/product/order/network/storage/backup'
          end
        end
      end
    end
  end
end
