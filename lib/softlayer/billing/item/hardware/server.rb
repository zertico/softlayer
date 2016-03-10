module Softlayer
  module Billing
    class Item
      class Hardware
        class Server < Softlayer::Billing::Item::Hardware

          class Representer < Softlayer::Billing::Item::Hardware::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
