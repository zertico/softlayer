module Softlayer
  module Container
    module Product
      class Order
        module Storage
          class Group < Softlayer::Model
            autoload :Partition, 'softlayer/container/product/order/storage/group/partition'
            attr_accessor :array_size
            attr_accessor :array_type_id
            attr_accessor :hard_drives
            attr_accessor :hot_spare_drives
            attr_accessor :partition_template_id
            attr_accessor :partitions

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :array_size, type: Float
              property :array_type_id, type: Integer
              property :partition_template_id, type: Integer
            end
          end
        end
      end
    end
  end
end
