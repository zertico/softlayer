module Softlayer
  class Hardware
    class Function < Softlayer::Entity
      attr_accessor :code
      attr_accessor :description
      attr_accessor :id

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :code, type: String
        property :description, type: String
        property :id, type: Integer
      end
    end
  end
end
