module Softlayer
  module Security
    class SecureTransportCipher < Softlayer::Model
      attr_accessor :key_name

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :key_name, type: String
      end
    end
  end
end
