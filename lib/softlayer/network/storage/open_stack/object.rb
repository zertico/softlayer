module Softlayer
  class Network
    class Storage
      module OpenStack
        class Object < Softlayer::Network::Storage
          attr_accessor :bandwidth_billing_item_count
          attr_accessor :bandwidth_billing_items

          class Representer < Softlayer::Network::Storage::Representer
            include Representable::Hash
            include Representable::Coercion
            property :bandwidth_billing_item_count, type: BigDecimal
          end
        end
      end
    end
  end
end
