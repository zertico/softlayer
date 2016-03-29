module Softlayer
  module Container
    module Network
      module Bandwidth
        module Data
          class Summary < Softlayer::Entity
            attr_accessor :allowed_usage
            attr_accessor :estimated_usage
            attr_accessor :projected_usage
            attr_accessor :usage_units

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :allowed_usage, type: Float
              property :estimated_usage, type: Float
              property :projected_usage, type: Float
              property :usage_units, type: String
            end
          end
        end
      end
    end
  end
end
