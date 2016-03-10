module Softlayer
  class Network
    module Bandwidth
      module Version1
        class Allocation < Softlayer::Model
          attr_accessor :amount
          attr_accessor :id
          attr_accessor :allotment_detail
          attr_accessor :billing_item

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :amount, type: Float
            property :id, type: Integer
          end
        end
      end
    end
  end
end
