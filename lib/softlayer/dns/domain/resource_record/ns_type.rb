module Softlayer
  module Dns
    class Domain
      class ResourceRecord
        class NsType < Softlayer::Dns::Domain::ResourceRecord

          class Representer < Softlayer::Dns::Domain::ResourceRecord::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
