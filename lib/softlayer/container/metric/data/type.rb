module Softlayer
  module Container
    module Metric
      module Data
        class Type < Softlayer::Model
          attr_accessor :key_name
          attr_accessor :name
          attr_accessor :summary_type
          attr_accessor :unit

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :key_name, type: String
            property :name, type: String
            property :summary_type, type: String
            property :unit, type: String
          end
        end
      end
    end
  end
end
