module Softlayer
  module Billing
    class Item
      module Software
        class Component
          module Virtual
            class OperatingSystem < Softlayer::Billing::Item
              autoload :Microsoft, 'softlayer/billing/item/software/component/virtual/operating_system/microsoft'
              autoload :Redhat, 'softlayer/billing/item/software/component/virtual/operating_system/redhat'

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
