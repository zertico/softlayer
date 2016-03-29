module Softlayer
  module Product
    class Package
      class Inventory < Softlayer::Entity
        attr_accessor :available_inventory_count
        attr_accessor :item_id
        attr_accessor :location_id
        attr_accessor :modify_date
        attr_accessor :overstock_flag
        attr_accessor :package_id
        attr_accessor :item
        attr_accessor :location
        attr_accessor :package

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :available_inventory_count, type: Integer
          property :item_id, type: Integer
          property :location_id, type: Integer
          property :modify_date, type: DateTime
          property :overstock_flag, type: Integer
          property :package_id, type: Integer
        end
      end
    end
  end
end
