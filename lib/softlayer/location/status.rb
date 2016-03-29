module Softlayer
  class Location
    class Status < Softlayer::Entity
      attr_accessor :id
      attr_accessor :status

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :id, type: Integer
        property :status, type: String
      end
    end
  end
end
