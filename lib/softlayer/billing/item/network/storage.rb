module Softlayer
  module Billing
    class Item
      module Network
        class Storage < Softlayer::Billing::Item
          autoload :Hub, 'softlayer/billing/item/network/storage/hub'
          attr_accessor :resource

          class Representer < Softlayer::Billing::Item::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
