module Softlayer
  class Network
    class Storage
      module Daily
        class Usage < Softlayer::Entity
          attr_accessor :bytes_used
          attr_accessor :cdn_http_bandwidth
          attr_accessor :create_date
          attr_accessor :nas_volume_id
          attr_accessor :public_bandwidth_out
          attr_accessor :nas_volume

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :bytes_used, type: BigDecimal
            property :cdn_http_bandwidth, type: BigDecimal
            property :create_date, type: DateTime
            property :nas_volume_id, type: Integer
            property :public_bandwidth_out, type: BigDecimal
          end
        end
      end
    end
  end
end
