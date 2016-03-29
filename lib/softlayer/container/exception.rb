module Softlayer
  module Container
    class Exception < Softlayer::Entity
      attr_accessor :exception_class
      attr_accessor :exception_message

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :exception_class, type: String
        property :exception_message, type: String
      end
    end
  end
end
