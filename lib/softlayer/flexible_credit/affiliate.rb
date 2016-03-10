module Softlayer
  module FlexibleCredit
    class Affiliate < Softlayer::Model
      attr_accessor :id
      attr_accessor :name
      attr_accessor :flexible_credit_program

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :id, type: Integer
        property :name, type: String
      end
    end
  end
end
