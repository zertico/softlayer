module Softlayer
  module Container
    module Product
      module Item
        module Discount
          class Program < Softlayer::Entity
            attr_accessor :applicable_quantity
            attr_accessor :item
            attr_accessor :one_time_amount
            attr_accessor :one_time_tax
            attr_accessor :prices
            attr_accessor :prorated_one_time_amount
            attr_accessor :prorated_one_time_tax
            attr_accessor :prorated_recurring_amount
            attr_accessor :prorated_recurring_tax
            attr_accessor :recurring_amount
            attr_accessor :recurring_tax

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :applicable_quantity, type: Integer
              property :one_time_amount, type: Float
              property :one_time_tax, type: Float
              property :prorated_one_time_amount, type: Float
              property :prorated_one_time_tax, type: Float
              property :prorated_recurring_amount, type: Float
              property :prorated_recurring_tax, type: Float
              property :recurring_amount, type: Float
              property :recurring_tax, type: Float
            end
          end
        end
      end
    end
  end
end
