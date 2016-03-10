module Softlayer
  module Software
    class Component
      class Package
        class Management
          class Ksplice < Softlayer::Software::Component::Package::Management

            class Representer < Softlayer::Software::Component::Package::Management::Representer
              include Representable::Hash
              include Representable::Coercion
            end
          end
        end
      end
    end
  end
end
