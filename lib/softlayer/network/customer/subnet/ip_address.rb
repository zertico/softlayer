module Softlayer
  class Network
    module Customer
      class Subnet
        class IpAddress < Softlayer::Entity
          attr_accessor :id
          attr_accessor :ip_address
          attr_accessor :notes
          attr_accessor :subnet_id
          attr_accessor :translation_count
          attr_accessor :subnet
          attr_accessor :translations

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :id, type: Integer
            property :ip_address, type: String
            property :notes, type: String
            property :subnet_id, type: Integer
            property :translation_count, type: BigDecimal
          end
        end
      end
    end
  end
end
