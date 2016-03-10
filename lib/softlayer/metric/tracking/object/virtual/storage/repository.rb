module Softlayer
  module Metric
    module Tracking
      class Object
        module Virtual
          module Storage
            class Repository < Softlayer::Metric::Tracking::Object::Abstract
              attr_accessor :resource

              class Representer < Softlayer::Metric::Tracking::Object::Abstract::Representer
                include Representable::Hash
                include Representable::Coercion
              end
            end
          end
        end
      end
    end
  end
end
