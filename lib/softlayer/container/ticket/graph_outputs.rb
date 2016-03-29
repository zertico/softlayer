module Softlayer
  module Container
    module Ticket
      class GraphOutputs < Softlayer::Entity
        attr_accessor :graph_image
        attr_accessor :graph_title
        attr_accessor :max_end_date
        attr_accessor :min_start_date

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :graph_title, type: String
          property :max_end_date, type: DateTime
          property :min_start_date, type: DateTime
        end
      end
    end
  end
end
