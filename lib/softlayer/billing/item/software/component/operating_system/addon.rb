module Softlayer
  module Billing
    class Item
      module Software
        class Component
          module OperatingSystem
            class Addon < Softlayer::Billing::Item
              autoload :Citrix, 'softlayer/billing/item/software/component/operating_system/addon/citrix'

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
