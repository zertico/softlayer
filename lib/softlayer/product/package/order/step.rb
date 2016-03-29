module Softlayer
  module Product
    class Package
      module Order
        class Step < Softlayer::Entity
          autoload :Next, 'softlayer/product/package/order/step/next'
          attr_accessor :id
          attr_accessor :step
          attr_accessor :inclusive_previous_step_count
          attr_accessor :next_step_count
          attr_accessor :previous_step_count
          attr_accessor :inclusive_previous_steps
          attr_accessor :next_steps
          attr_accessor :previous_steps

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :id, type: Integer
            property :step, type: String
            property :inclusive_previous_step_count, type: BigDecimal
            property :next_step_count, type: BigDecimal
            property :previous_step_count, type: BigDecimal
          end
        end
      end
    end
  end
end
