module Softlayer
  module Container
    class Message < Softlayer::Entity
      attr_accessor :message
      attr_accessor :type

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :message, type: String
        property :type, type: String
      end
    end
  end
end
