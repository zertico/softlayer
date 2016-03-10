module Softlayer
  module Container
    module Network
      module Subnet
        class IpAddress < Softlayer::Model
          attr_accessor :hardware
          attr_accessor :ip_address
          attr_accessor :is_broadcast_address
          attr_accessor :is_gateway_address
          attr_accessor :is_network_address

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :ip_address, type: String
            property :is_broadcast_address, type: Boolean
            property :is_gateway_address, type: Boolean
            property :is_network_address, type: Boolean
          end
        end
      end
    end
  end
end
