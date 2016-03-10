module Softlayer
  module Container
    module Notification
      module Mass
        module Filter
          class TemplateValue < Softlayer::Model

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
            end
          end
        end
      end
    end
  end
end
