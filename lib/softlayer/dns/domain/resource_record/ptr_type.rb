module Softlayer
  module Dns
    class Domain
      class ResourceRecord
        class PtrType < Softlayer::Dns::Domain::ResourceRecord
          attr_accessor :is_gateway_address

          class Representer < Softlayer::Dns::Domain::ResourceRecord::Representer
            include Representable::Hash
            include Representable::Coercion
            property :is_gateway_address, type: Boolean
          end
        end
      end
    end
  end
end
