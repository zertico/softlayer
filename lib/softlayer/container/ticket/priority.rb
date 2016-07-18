module Softlayer
  module Container
    module Ticket
      class Priority < Softlayer::Entity
        attr_accessor :name
        attr_accessor :value

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :name, type: String
          property :value, type: Integer
        end
      end
    end
  end
end
