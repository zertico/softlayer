module Softlayer
  class Network
    class Component
      class Detail < Softlayer::Model
        attr_accessor :polling_interface_index
        attr_accessor :network_component

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :polling_interface_index, type: Integer
        end
      end
    end
  end
end
