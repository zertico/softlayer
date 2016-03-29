module Softlayer
  module Container
    module Bandwidth
      class GraphOutputsExtended < Softlayer::Entity
        attr_accessor :graph_image
        attr_accessor :graph_title
        attr_accessor :in_bound_total_bytes
        attr_accessor :max_end_date
        attr_accessor :min_start_date
        attr_accessor :out_bound_total_bytes

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :graph_title, type: String
          property :in_bound_total_bytes, type: BigDecimal
          property :max_end_date, type: DateTime
          property :min_start_date, type: DateTime
          property :out_bound_total_bytes, type: BigDecimal
        end
      end
    end
  end
end
