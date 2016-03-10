module Softlayer
  module Software
    class Component
      class Package
        class Management < Softlayer::Software::Component::Package
          autoload :Ksplice, 'softlayer/software/component/package/management/ksplice'

          class Representer < Softlayer::Software::Component::Package::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
