module Softlayer
  class Brand
    module Payment
      class Processor < Softlayer::Entity
        attr_accessor :brand
        attr_accessor :payment_processor

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
