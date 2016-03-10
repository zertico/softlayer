module Softlayer
  module Container
    module Network
      module Storage
        class NetworkConnectionInformation < Softlayer::Model
          attr_accessor :id
          attr_accessor :ip_address
          attr_accessor :storage_type

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :id, type: String
            property :ip_address, type: String
            property :storage_type, type: String
          end
        end
      end
    end
  end
end
