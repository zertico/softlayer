module Softlayer
  module Container
    module Network
      module Storage
        class Host < Softlayer::Entity
          attr_accessor :id
          attr_accessor :object_type

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :id, type: Integer
            property :object_type, type: String
          end
        end
      end
    end
  end
end
