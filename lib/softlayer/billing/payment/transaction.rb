module Softlayer
  module Billing
    module Payment
      class Transaction < Softlayer::Model

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
