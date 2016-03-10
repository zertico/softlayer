module Softlayer
  module Container
    class Message < Softlayer::Model
      attr_accessor :message
      attr_accessor :type

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :message, type: String
        property :type, type: String
      end
    end
  end
end
