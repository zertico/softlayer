module Softlayer
  module Software
    class Component
      class Package < Softlayer::Software::Component
        autoload :Management, 'softlayer/software/component/package/management'

        class Representer < Softlayer::Software::Component::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
