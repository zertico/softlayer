module Softlayer
  module Billing
    class Order
      class Type < Softlayer::Entity
        attr_accessor :description
        attr_accessor :id
        attr_accessor :type

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :description, type: String
          property :id, type: Integer
          property :type, type: String
        end
      end
    end
  end
end
