module Softlayer
  class Ticket
    class Type < Softlayer::Model
      attr_accessor :id
      attr_accessor :key_name

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :id, type: Integer
        property :key_name, type: String
      end
    end
  end
end
