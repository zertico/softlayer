module Softlayer
  module Catalyst
    module Company
      class Type < Softlayer::Entity
        attr_accessor :description
        attr_accessor :id

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :description, type: String
          property :id, type: Integer
        end
      end
    end
  end
end
