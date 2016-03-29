module Softlayer
  module Billing
    module Payment
      class Transaction < Softlayer::Entity

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
