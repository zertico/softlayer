module Softlayer
  class Hardware
    class Component
      class Motherboard
        module Reboot
          class Time < Softlayer::Model
            attr_accessor :with_raid
            attr_accessor :without_raid
            attr_accessor :hardware_component_model

            class Representer < Representable::Decorator
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
