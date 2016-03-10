module Softlayer
  module Billing
    class Item
      module Network
        class Storage
          class Hub
            class Bandwidth < Softlayer::Billing::Item::Network::Storage

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
end
