module Softlayer
  module Container
    module Tax
      class Rates < Softlayer::Entity
        attr_accessor :labor_tax_rate
        attr_accessor :location_id
        attr_accessor :one_time_tax_rate
        attr_accessor :recurring_tax_rate
        attr_accessor :setup_tax_rate

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :labor_tax_rate, type: Float
          property :location_id, type: Float
          property :one_time_tax_rate, type: Float
          property :recurring_tax_rate, type: Float
          property :setup_tax_rate, type: Float
        end
      end
    end
  end
end
