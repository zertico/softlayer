module Softlayer
  module Security
    class SecureTransportProtocol < Softlayer::Entity
      attr_accessor :key_name
      attr_accessor :supported_secure_transport_ciphers

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :key_name, type: String
      end
    end
  end
end
