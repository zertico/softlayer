module Softlayer
  module Software
    class Component
      class Analytics
        class Urchin < Softlayer::Software::Component::Analytics

          class Representer < Softlayer::Software::Component::Analytics::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
