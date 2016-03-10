module Softlayer
  class Location
    class Status < Softlayer::Model
      attr_accessor :id
      attr_accessor :status

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :id, type: Integer
        property :status, type: String
      end
    end
  end
end
