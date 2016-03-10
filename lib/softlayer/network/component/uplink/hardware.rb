module Softlayer
  class Network
    class Component
      module Uplink
        class Hardware < Softlayer::Model
          attr_accessor :hardware
          attr_accessor :network_component

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
