module Softlayer
  module Auxiliary
    module Shipping
      class Courier < Softlayer::Model
        autoload :Type, 'softlayer/auxiliary/shipping/courier/type'
        attr_accessor :id
        attr_accessor :key_name
        attr_accessor :name
        attr_accessor :url

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :id, type: Integer
          property :key_name, type: String
          property :name, type: String
          property :url, type: String
        end
      end
    end
  end
end
