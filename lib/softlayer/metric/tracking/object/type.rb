module Softlayer
  module Metric
    module Tracking
      class Object
        class Type < Softlayer::Model
          attr_accessor :keyname
          attr_accessor :name

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :keyname, type: String
            property :name, type: String
          end
        end
      end
    end
  end
end
