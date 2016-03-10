module Softlayer
  module Billing
    class Item
      module Software
        class Component
          module OperatingSystem
            class Addon
              module Citrix
                class Essentials < Softlayer::Billing::Item::Software::Component::OperatingSystem::Addon
                  attr_accessor :resource

                  class Representer < Softlayer::Billing::Item::Software::Component::OperatingSystem::Addon::Representer
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
