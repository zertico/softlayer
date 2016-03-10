module Softlayer
  module Container
    module Tax
      class Cache < Softlayer::Model
        autoload :Item, 'softlayer/container/tax/cache/item'
        attr_accessor :effective_tax_rate
        attr_accessor :items
        attr_accessor :status
        attr_accessor :total_tax_amount

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :effective_tax_rate, type: Float
          property :status, type: String
          property :total_tax_amount, type: Float
        end
      end
    end
  end
end
