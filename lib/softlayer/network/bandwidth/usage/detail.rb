module Softlayer
  class Network
    module Bandwidth
      class Usage
        class Detail < Softlayer::Model
          attr_accessor :amount_in
          attr_accessor :amount_out
          attr_accessor :bandwidth_usage_detail_type_id
          attr_accessor :account
          attr_accessor :tracking_object
          attr_accessor :type

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :amount_in, type: Float
            property :amount_out, type: Float
            property :bandwidth_usage_detail_type_id, type: Float
          end
        end
      end
    end
  end
end
