module Softlayer
  module Container
    module Network
      module ContentDelivery
        class PointsOfPresence < Softlayer::Entity
          attr_accessor :id
          attr_accessor :name

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :id, type: Integer
            property :name, type: String
          end
        end
      end
    end
  end
end
