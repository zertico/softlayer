module Softlayer
  module Billing
    module Payment
      class Processor
        class Type < Softlayer::Entity
          attr_accessor :description
          attr_accessor :key_name
          attr_accessor :name
          attr_accessor :payment_processor_count
          attr_accessor :payment_processors

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :description, type: String
            property :key_name, type: String
            property :name, type: String
            property :payment_processor_count, type: BigDecimal
          end
        end
      end
    end
  end
end
