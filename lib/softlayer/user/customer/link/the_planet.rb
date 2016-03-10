module Softlayer
  module User
    class Customer
      class Link
        class ThePlanet < Softlayer::User::Customer::Link

          class Representer < Softlayer::User::Customer::Link::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
