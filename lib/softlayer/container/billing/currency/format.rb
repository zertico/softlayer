module Softlayer
  module Container
    module Billing
      module Currency
        class Format < Softlayer::Model
          attr_accessor :currency
          attr_accessor :display
          attr_accessor :format
          attr_accessor :locale
          attr_accessor :name
          attr_accessor :position
          attr_accessor :precision
          attr_accessor :script
          attr_accessor :service
          attr_accessor :symbol
          attr_accessor :tag
          attr_accessor :value

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :currency, type: String
            property :display, type: Integer
            property :format, type: String
            property :locale, type: String
            property :name, type: String
            property :position, type: Integer
            property :precision, type: Integer
            property :script, type: String
            property :service, type: String
            property :symbol, type: String
            property :tag, type: String
            property :value, type: Float
          end
        end
      end
    end
  end
end
