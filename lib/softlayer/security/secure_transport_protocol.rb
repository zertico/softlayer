module Softlayer
  module Security
    class SecureTransportProtocol < Softlayer::Model
      attr_accessor :key_name
      attr_accessor :supported_secure_transport_ciphers

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :key_name, type: String
      end
    end
  end
end
