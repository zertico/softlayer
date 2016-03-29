module Softlayer
  class Survey
    class Type < Softlayer::Entity
      attr_accessor :description
      attr_accessor :id
      attr_accessor :name

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :description, type: String
        property :id, type: Integer
        property :name, type: String
      end
    end
  end
end
