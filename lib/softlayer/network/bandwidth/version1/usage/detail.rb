module Softlayer
  class Network
    module Bandwidth
      module Version1
        class Usage
          class Detail < Softlayer::Entity
            autoload :Total, 'softlayer/network/bandwidth/version1/usage/detail/total'
            autoload :Type, 'softlayer/network/bandwidth/version1/usage/detail/type'
            attr_accessor :amount_in
            attr_accessor :amount_out
            attr_accessor :day
            attr_accessor :bandwidth_usage
            attr_accessor :bandwidth_usage_detail_type

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :amount_in, type: Float
              property :amount_out, type: Float
              property :day, type: DateTime
            end
          end
        end
      end
    end
  end
end
