module Softlayer
  module Marketplace
    class EmailDistribution < Softlayer::Model
      attr_accessor :email
      attr_accessor :id

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :email, type: String
        property :id, type: Integer
      end
    end
  end
end
