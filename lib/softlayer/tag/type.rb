module Softlayer
  class Tag
    class Type < Softlayer::Entity
      attr_accessor :description
      attr_accessor :key_name

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :description, type: String
        property :key_name, type: String
      end
    end
  end
end
