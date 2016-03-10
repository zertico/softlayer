module Softlayer
  class Hardware
    class Function < Softlayer::Model
      attr_accessor :code
      attr_accessor :description
      attr_accessor :id

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :code, type: String
        property :description, type: String
        property :id, type: Integer
      end
    end
  end
end
