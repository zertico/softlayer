module Softlayer
  module Billing
    class Item
      module Software
        class Component
          class ControlPanel < Softlayer::Billing::Item
            autoload :Parallels, 'softlayer/billing/item/software/component/control_panel/parallels'

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
