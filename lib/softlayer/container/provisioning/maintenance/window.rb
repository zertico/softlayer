module Softlayer
  module Container
    module Provisioning
      module Maintenance
        class Window < Softlayer::Model
          attr_accessor :classification_ids
          attr_accessor :item_category_ids
          attr_accessor :maintenance_window_id
          attr_accessor :ticket_id
          attr_accessor :window_maintenance_date

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :maintenance_window_id, type: Integer
            property :ticket_id, type: Integer
            property :window_maintenance_date, type: DateTime
          end
        end
      end
    end
  end
end
