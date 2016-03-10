module Softlayer
  module Container
    module Search
      class Result < Softlayer::Model
        attr_accessor :matched_terms
        attr_accessor :relevance_score
        attr_accessor :resource
        attr_accessor :resource_type

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :relevance_score, type: Float
          property :resource_type, type: String
        end
      end
    end
  end
end
