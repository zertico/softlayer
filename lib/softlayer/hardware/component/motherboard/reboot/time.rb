module Softlayer
  class Hardware
    class Component
      class Motherboard
        module Reboot
          class Time < Softlayer::Entity
            attr_accessor :with_raid
            attr_accessor :without_raid
            attr_accessor :hardware_component_model

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :with_raid, type: Integer
              property :without_raid, type: Integer
            end
          end
        end
      end
    end
  end
end
