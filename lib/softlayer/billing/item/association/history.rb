module Softlayer
  module Billing
    class Item
      module Association
        class History < Softlayer::Entity
          attr_accessor :associated_billing_item_id
          attr_accessor :billing_item_id
          attr_accessor :create_date
          attr_accessor :id
          attr_accessor :associated_billing_item
          attr_accessor :billing_item

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :associated_billing_item_id, type: Integer
            property :billing_item_id, type: Integer
            property :create_date, type: DateTime
            property :id, type: Integer
          end
        end
      end
    end
  end
end
