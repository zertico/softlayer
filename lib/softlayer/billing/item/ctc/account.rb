module Softlayer
  module Billing
    class Item
      module Ctc
        class Account < Softlayer::Billing::Item

          class Representer < Softlayer::Billing::Item::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
