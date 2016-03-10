module Softlayer
  module Container
    module Network
      module ContentDelivery
        module Bandwidth
          module PointsOfPresence
            class Summary < Softlayer::Model
              attr_accessor :bandwidth
              attr_accessor :end_date_time
              attr_accessor :pop_name
              attr_accessor :start_date_time
              attr_accessor :usage_units
              attr_accessor :view_count

              class Representer < Representable::Decorator
                include Representable::Hash
                include Representable::Coercion
                property :bandwidth, type: BigDecimal
                property :end_date_time, type: DateTime
                property :pop_name, type: String
                property :start_date_time, type: DateTime
                property :usage_units, type: String
                property :view_count, type: BigDecimal
              end
            end
          end
        end
      end
    end
  end
end
