module Softlayer
  module Container
    module Monitoring
      module Graph
        class Outputs < Softlayer::Entity
          attr_accessor :end_date
          attr_accessor :graph_error
          attr_accessor :graph_image
          attr_accessor :start_date

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :end_date, type: DateTime
            property :graph_error, type: String
            property :start_date, type: DateTime
          end
        end
      end
    end
  end
end
