module Softlayer
  class Network
    module Bandwidth
      module Version1
        class Allotment
          class Detail < Softlayer::Model
            attr_accessor :allocation_id
            attr_accessor :bandwidth_allotment_id
            attr_accessor :effective_date
            attr_accessor :end_effective_date
            attr_accessor :id
            attr_accessor :service_provider_id
            attr_accessor :bandwidth_usage_count
            attr_accessor :allocation
            attr_accessor :bandwidth_allotment
            attr_accessor :bandwidth_usage

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :allocation_id, type: Integer
              property :bandwidth_allotment_id, type: Integer
              property :effective_date, type: DateTime
              property :end_effective_date, type: DateTime
              property :id, type: Integer
              property :service_provider_id, type: Integer
              property :bandwidth_usage_count, type: BigDecimal
            end
          end
        end
      end
    end
  end
end
