module Softlayer
  module Billing
    class Item
      module Network
        module Application
          module Delivery
            class Controller
              module LoadBalancer
                class VirtualIpAddress < Softlayer::Billing::Item
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
  end
end
