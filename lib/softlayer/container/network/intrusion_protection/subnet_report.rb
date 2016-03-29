module Softlayer
  module Container
    module Network
      module IntrusionProtection
        class SubnetReport < Softlayer::Entity
          attr_accessor :cidr
          attr_accessor :direction
          attr_accessor :events
          attr_accessor :subnet_ip_address

          class Representer < Softlayer::Entity::Representer
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
