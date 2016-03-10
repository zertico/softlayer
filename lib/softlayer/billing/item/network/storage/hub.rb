module Softlayer
  module Billing
    class Item
      module Network
        class Storage
          class Hub < Softlayer::Billing::Item::Network::Storage
            autoload :Bandwidth, 'softlayer/billing/item/network/storage/hub/bandwidth'

            class Representer < Softlayer::Billing::Item::Network::Storage::Representer
              include Representable::Hash
              include Representable::Coercion
            end
          end
        end
      end
    end
  end
end
