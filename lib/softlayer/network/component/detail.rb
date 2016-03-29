module Softlayer
  class Network
    class Component
      class Detail < Softlayer::Entity
        attr_accessor :polling_interface_index
        attr_accessor :network_component

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :polling_interface_index, type: Integer
        end
      end
    end
  end
end
