module Softlayer
  class Network
    class Component
      module Uplink
        class Hardware < Softlayer::Entity
          attr_accessor :hardware
          attr_accessor :network_component

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
