module Softlayer
  module Container
    module Product
      class Order
        class Network
          module Storage
            class Enterprise < Softlayer::Container::Product::Order
              autoload :SnapshotSpace, 'softlayer/container/product/order/network/storage/enterprise/snapshot_space'
              attr_accessor :origin_volume_id
              attr_accessor :origin_volume_schedule_id
              attr_accessor :os_format_type

              class Representer < Softlayer::Container::Product::Order::Representer
                include Representable::Hash
                include Representable::Coercion
                property :origin_volume_id, type: Integer
                property :origin_volume_schedule_id, type: Integer
              end
            end
          end
        end
      end
    end
  end
end
