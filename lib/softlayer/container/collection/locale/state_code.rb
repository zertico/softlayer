module Softlayer
  module Container
    module Collection
      module Locale
        class StateCode < Softlayer::Model
          attr_accessor :long_name
          attr_accessor :short_name

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :long_name, type: String
            property :short_name, type: String
          end
        end
      end
    end
  end
end
