module Softlayer
  module Container
    module Hardware
      module Server
        class Details < Softlayer::Entity
          attr_accessor :components
          attr_accessor :network_components
          attr_accessor :software

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
