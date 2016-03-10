module Softlayer
  module Container
    module Hardware
      module Server
        class Details < Softlayer::Model
          attr_accessor :components
          attr_accessor :network_components
          attr_accessor :software

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
