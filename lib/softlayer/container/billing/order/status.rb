module Softlayer
  module Container
    module Billing
      module Order
        class Status < Softlayer::Model
          attr_accessor :description
          attr_accessor :status

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :description, type: String
            property :status, type: String
          end
        end
      end
    end
  end
end
