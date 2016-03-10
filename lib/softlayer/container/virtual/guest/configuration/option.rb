module Softlayer
  module Container
    module Virtual
      module Guest
        class Configuration
          class Option < Softlayer::Model
            attr_accessor :item_price
            attr_accessor :template

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
