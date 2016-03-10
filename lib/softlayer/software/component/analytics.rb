module Softlayer
  module Software
    class Component
      class Analytics < Softlayer::Software::Component
        autoload :Urchin, 'softlayer/software/component/analytics/urchin'

        class Representer < Softlayer::Software::Component::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
