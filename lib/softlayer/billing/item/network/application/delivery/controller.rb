module Softlayer
  module Billing
    class Item
      module Network
        module Application
          module Delivery
            class Controller < Softlayer::Billing::Item
              autoload :LoadBalancer, 'softlayer/billing/item/network/application/delivery/controller/load_balancer'
              attr_accessor :bandwidth_allotment_detail
              attr_accessor :resource

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
