module Softlayer
  module Billing
    class Item
      module Network
        module Message
          class Queue
            class Delivery < Softlayer::Billing::Item::Network::Message::Queue

              class Representer < Softlayer::Billing::Item::Network::Message::Queue::Representer
                include Representable::Hash
                include Representable::Coercion
              end
            end
          end
        end
      end
    end
  end
end
