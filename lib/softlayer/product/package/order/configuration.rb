module Softlayer
  module Product
    class Package
      module Order
        class Configuration < Softlayer::Model
          attr_accessor :error_message
          attr_accessor :id
          attr_accessor :is_required
          attr_accessor :item_category_id
          attr_accessor :order_step_id
          attr_accessor :package_id
          attr_accessor :sort
          attr_accessor :item_category
          attr_accessor :package
          attr_accessor :step

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :error_message, type: String
            property :id, type: Integer
            property :is_required, type: Integer
            property :item_category_id, type: Integer
            property :order_step_id, type: Integer
            property :package_id, type: Integer
            property :sort, type: Integer
          end
        end
      end
    end
  end
end
