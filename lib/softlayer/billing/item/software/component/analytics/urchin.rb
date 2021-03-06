module Softlayer
  module Billing
    class Item
      module Software
        class Component
          module Analytics
            class Urchin < Softlayer::Billing::Item

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
end
