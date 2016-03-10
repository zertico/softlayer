module Softlayer
  module Billing
    class Item
      module Network
        class Firewall
          module Module
            class Context < Softlayer::Billing::Item

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
