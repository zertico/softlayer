module Softlayer
  module Container
    module Metric
      module Tracking
        module Object
          class Summary < Softlayer::Model
            attr_accessor :metric_name

            class Representer < Representable::Decorator
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
