module Softlayer
  module Billing
    class Item
      class Hardware
        class Component < Softlayer::Billing::Item
          attr_accessor :resource_table_id
          attr_accessor :resource_count
          attr_accessor :resource

          class Representer < Softlayer::Billing::Item::Representer
            include Representable::Hash
            include Representable::Coercion
            property :resource_table_id, type: Integer
            property :resource_count, type: BigDecimal
          end
        end
      end
    end
  end
end
