module Softlayer
  module Product
    class Package
      class Preset
        class Configuration < Softlayer::Model
          attr_accessor :category
          attr_accessor :package_preset
          attr_accessor :price

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
