module Softlayer
  class Network
    class Storage
      class Hub < Softlayer::Network::Storage
        autoload :Swift, 'softlayer/network/storage/hub/swift'
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
