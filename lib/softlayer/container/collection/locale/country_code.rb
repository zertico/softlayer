module Softlayer
  module Container
    module Collection
      module Locale
        class CountryCode < Softlayer::Model
          attr_accessor :long_name
          attr_accessor :short_name
          attr_accessor :state_codes

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
