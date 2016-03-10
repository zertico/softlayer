module Softlayer
  module Billing
    class Item
      class Workspace < Softlayer::Billing::Item

        class Representer < Softlayer::Billing::Item::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
