module Softlayer
  module Dns
    class Domain
      class ResourceRecord
        class SpfType < Softlayer::Dns::Domain::ResourceRecord::TxtType

          class Representer < Softlayer::Dns::Domain::ResourceRecord::TxtType::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
