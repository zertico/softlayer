module Softlayer
  module Container
    module Product
      class Order
        class Network
          module Storage
            class Enterprise
              class SnapshotSpace < Softlayer::Container::Product::Order
                autoload :Upgrade, 'softlayer/container/product/order/network/storage/enterprise/snapshot_space/upgrade'
                attr_accessor :volume_id

                class Representer < Softlayer::Container::Product::Order::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :volume_id, type: Integer
                end
              end
            end
          end
        end
      end
    end
  end
end
