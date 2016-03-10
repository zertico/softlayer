module Softlayer
  module Billing
    class Item
      module Software
        class Component < Softlayer::Billing::Item
          autoload :ControlPanel, 'softlayer/billing/item/software/component/control_panel'
          autoload :Analytics, 'softlayer/billing/item/software/component/analytics'
          autoload :OperatingSystem, 'softlayer/billing/item/software/component/operating_system'
          autoload :Virtual, 'softlayer/billing/item/software/component/virtual'
          attr_accessor :resource_table_id
          attr_accessor :resource

          class Representer < Softlayer::Billing::Item::Representer
            include Representable::Hash
            include Representable::Coercion
            property :resource_table_id, type: Integer
          end
        end
      end
    end
  end
end
