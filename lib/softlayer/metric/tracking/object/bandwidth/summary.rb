module Softlayer
  module Metric
    module Tracking
      class Object
        module Bandwidth
          class Summary < Softlayer::Entity
            SERVICE = 'SoftLayer_Metric_Tracking_Object_Bandwidth_Summary'
            attr_accessor :allocation_amount
            attr_accessor :allocation_id
            attr_accessor :amount_out
            attr_accessor :average_daily_usage
            attr_accessor :currently_over_allocation_flag
            attr_accessor :id
            attr_accessor :outbound_bandwidth_amount
            attr_accessor :projected_bandwidth_usage
            attr_accessor :projected_over_allocation_flag

            def get_object
              request(:get_object, Softlayer::Metric::Tracking::Object::Bandwidth::Summary)
            end

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :allocation_amount, type: Float
              property :allocation_id, type: Integer
              property :amount_out, type: Float
              property :average_daily_usage, type: Float
              property :currently_over_allocation_flag, type: Integer
              property :id, type: Integer
              property :outbound_bandwidth_amount, type: Float
              property :projected_bandwidth_usage, type: Float
              property :projected_over_allocation_flag, type: Integer
            end
          end
        end
      end
    end
  end
end
