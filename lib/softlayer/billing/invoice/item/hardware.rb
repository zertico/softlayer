module Softlayer
  module Billing
    class Invoice
      class Item
        class Hardware < Softlayer::Billing::Invoice::Item
          attr_accessor :resource

          class Representer < Softlayer::Billing::Invoice::Item::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
