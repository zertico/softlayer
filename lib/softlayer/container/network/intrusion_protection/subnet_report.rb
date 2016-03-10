module Softlayer
  module Container
    module Network
      module IntrusionProtection
        class SubnetReport < Softlayer::Model
          attr_accessor :cidr
          attr_accessor :direction
          attr_accessor :events
          attr_accessor :subnet_ip_address

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :cidr, type: Integer
            property :direction, type: String
            property :subnet_ip_address, type: String
          end
        end
      end
    end
  end
end
