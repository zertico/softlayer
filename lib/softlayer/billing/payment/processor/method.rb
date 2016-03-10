module Softlayer
  module Billing
    module Payment
      class Processor
        class Method < Softlayer::Model
          attr_accessor :method_key
          attr_accessor :multiple_currency_flag
          attr_accessor :payment_processor
          attr_accessor :payment_type

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :method_key, type: String
            property :multiple_currency_flag, type: Boolean
          end
        end
      end
    end
  end
end
