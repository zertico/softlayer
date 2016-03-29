module Softlayer
  module FlexibleCredit
    class Affiliate < Softlayer::Entity
      attr_accessor :id
      attr_accessor :name
      attr_accessor :flexible_credit_program

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :id, type: Integer
        property :name, type: String
      end
    end
  end
end
