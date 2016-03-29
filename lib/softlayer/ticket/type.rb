module Softlayer
  class Ticket
    class Type < Softlayer::Entity
      attr_accessor :id
      attr_accessor :key_name

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :id, type: Integer
        property :key_name, type: String
      end
    end
  end
end
