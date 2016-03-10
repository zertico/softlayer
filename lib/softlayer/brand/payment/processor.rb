module Softlayer
  class Brand
    module Payment
      class Processor < Softlayer::Model
        attr_accessor :brand
        attr_accessor :payment_processor

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
