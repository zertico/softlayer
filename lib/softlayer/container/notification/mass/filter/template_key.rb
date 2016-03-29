module Softlayer
  module Container
    module Notification
      module Mass
        module Filter
          class TemplateKey < Softlayer::Entity

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
            end
          end
        end
      end
    end
  end
end
