module Softlayer
  module Security
    class SecureTransportCipher < Softlayer::Entity
      attr_accessor :key_name

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :key_name, type: String
      end
    end
  end
end
