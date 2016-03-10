module Softlayer
  class Account
    class Link
      class ThePlanet < Softlayer::Account::Link

        class Representer < Softlayer::Account::Link::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
