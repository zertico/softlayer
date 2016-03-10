module Softlayer
  module Billing
    class Item
      module Network
        module PerformanceStorage
          class Iscsi < Softlayer::Billing::Item::Network::Storage

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
