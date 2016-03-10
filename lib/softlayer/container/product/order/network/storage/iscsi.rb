module Softlayer
  module Container
    module Product
      class Order
        class Network
          module Storage
            class Iscsi < Softlayer::Container::Product::Order
              autoload :Replication, 'softlayer/container/product/order/network/storage/iscsi/replication'
              autoload :SnapshotSpace, 'softlayer/container/product/order/network/storage/iscsi/snapshot_space'

              class Representer < Softlayer::Container::Product::Order::Representer
                include Representable::Hash
                include Representable::Coercion
              end
            end
          end
        end
      end
    end
  end
end
