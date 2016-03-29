module Softlayer
  class Hardware
    module Power
      class Component < Softlayer::Entity
        attr_accessor :hardware_id
        attr_accessor :id
        attr_accessor :hardware

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :hardware_id, type: Integer
          property :id, type: Integer
        end
      end
    end
  end
end
