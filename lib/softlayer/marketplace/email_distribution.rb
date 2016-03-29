module Softlayer
  module Marketplace
    class EmailDistribution < Softlayer::Entity
      attr_accessor :email
      attr_accessor :id

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :email, type: String
        property :id, type: Integer
      end
    end
  end
end
