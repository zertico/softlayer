module Softlayer
  module FlexibleCredit
    module Company
      class Type < Softlayer::Model
        attr_accessor :description
        attr_accessor :id

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :description, type: String
          property :id, type: Integer
        end
      end
    end
  end
end
