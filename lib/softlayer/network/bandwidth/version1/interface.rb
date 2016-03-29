module Softlayer
  class Network
    module Bandwidth
      module Version1
        class Interface < Softlayer::Entity
          attr_accessor :host_id
          attr_accessor :network_component_id
          attr_accessor :host
          attr_accessor :network_component

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :host_id, type: Integer
            property :network_component_id, type: Integer
          end
        end
      end
    end
  end
end
