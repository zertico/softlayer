module Softlayer
  class Network
    module Bandwidth
      module Version1
        class Usage < Softlayer::Entity
          autoload :Detail, 'softlayer/network/bandwidth/version1/usage/detail'
          attr_accessor :bandwidth_usage_detail_count
          attr_accessor :bandwidth_allotment_detail
          attr_accessor :bandwidth_usage_detail

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :bandwidth_usage_detail_count, type: BigDecimal
          end
        end
      end
    end
  end
end
