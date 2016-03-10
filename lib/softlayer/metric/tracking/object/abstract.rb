module Softlayer
  module Metric
    module Tracking
      class Object
        class Abstract < Softlayer::Metric::Tracking::Object

          class Representer < Softlayer::Metric::Tracking::Object::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
