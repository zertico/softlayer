module Softlayer
  module Billing
    class Item
      module Network
        module Message
          class Queue < Softlayer::Billing::Item
            autoload :Delivery, 'softlayer/billing/item/network/message/queue/delivery'
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
end
