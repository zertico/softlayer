module Softlayer
  module Billing
    class Item
      module Network
        class Firewall < Softlayer::Billing::Item
          autoload :Module, 'softlayer/billing/item/network/firewall/module'
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
