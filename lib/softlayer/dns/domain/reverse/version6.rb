module Softlayer
  module Dns
    class Domain
      class Reverse
        class Version6 < Softlayer::Dns::Domain::Reverse

          class Representer < Softlayer::Dns::Domain::Reverse::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
