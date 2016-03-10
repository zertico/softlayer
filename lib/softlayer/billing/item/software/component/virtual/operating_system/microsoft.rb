module Softlayer
  module Billing
    class Item
      module Software
        class Component
          module Virtual
            class OperatingSystem
              class Microsoft < Softlayer::Billing::Item::Software::Component::Virtual::OperatingSystem
                attr_accessor :resource_table_id
                attr_accessor :resource

                class Representer < Softlayer::Billing::Item::Software::Component::Virtual::OperatingSystem::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :resource_table_id, type: Integer
                end
              end
            end
          end
        end
      end
    end
  end
end
