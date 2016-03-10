module Softlayer
  module Billing
    class Item
      module Virtual
        module Host
          class Usage < Softlayer::Billing::Item
            attr_accessor :resource_table_id
            attr_accessor :resource

            class Representer < Softlayer::Billing::Item::Representer
              include Representable::Hash
              include Representable::Coercion
              property :resource_table_id, type: Integer
            end
          end
        end
      end
    end
  end
end
