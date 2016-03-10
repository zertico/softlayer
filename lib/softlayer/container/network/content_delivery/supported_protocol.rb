module Softlayer
  module Container
    module Network
      module ContentDelivery
        class SupportedProtocol < Softlayer::Model
          attr_accessor :host
          attr_accessor :media_type
          attr_accessor :platform
          attr_accessor :protocol

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :host, type: String
            property :media_type, type: String
            property :platform, type: String
            property :protocol, type: String
          end
        end
      end
    end
  end
end
