module Softlayer
  module Product
    class Package
      module Order
        class Step
          class Next < Softlayer::Model
            attr_accessor :id
            attr_accessor :next_order_step_id
            attr_accessor :order_step_id
            attr_accessor :step

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :id, type: Integer
              property :next_order_step_id, type: Integer
              property :order_step_id, type: Integer
            end
          end
        end
      end
    end
  end
end
