module Softlayer
  module Dns
    class Domain
      class Forward < Softlayer::Dns::Domain

        class Representer < Softlayer::Dns::Domain::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
