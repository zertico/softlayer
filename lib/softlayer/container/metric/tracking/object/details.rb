module Softlayer
  module Container
    module Metric
      module Tracking
        module Object
          class Details < Softlayer::Entity
            attr_accessor :metric_name

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :metric_name, type: String
            end
          end
        end
      end
    end
  end
end
