module Softlayer
  module Software
    class Component
      class ControlPanel
        class Swsoft < Softlayer::Software::Component

          class Representer < Softlayer::Software::Component::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
