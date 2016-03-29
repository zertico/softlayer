module Softlayer
  module Configuration
    module Storage
      module Group
        class Order < Softlayer::Entity
          attr_accessor :array_number
          attr_accessor :array_size
          attr_accessor :array_type_id
          attr_accessor :billing_order_item_id
          attr_accessor :hard_drives
          attr_accessor :hot_spare_drives
          attr_accessor :partition_data
          attr_accessor :array_type
          attr_accessor :billing_order_item

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :array_number, type: Integer
            property :array_size, type: Float
            property :array_type_id, type: Integer
            property :billing_order_item_id, type: Integer
            property :partition_data, type: String
          end
        end
      end
    end
  end
end
