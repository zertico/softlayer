module Softlayer
  module Billing
    class Item
      module Network
        class Tunnel < Softlayer::Billing::Item
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
