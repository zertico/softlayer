module Softlayer
  module Billing
    class Item
      module Virtual
        module Dedicated
          class Rack < Softlayer::Billing::Item
            attr_accessor :billing_cycle_bandwidth_usage_count
            attr_accessor :billing_cycle_private_bandwidth_usage_count
            attr_accessor :billing_cycle_public_bandwidth_usage_count
            attr_accessor :billing_cycle_bandwidth_usage
            attr_accessor :billing_cycle_private_bandwidth_usage
            attr_accessor :billing_cycle_private_usage_in
            attr_accessor :billing_cycle_private_usage_out
            attr_accessor :billing_cycle_private_usage_total
            attr_accessor :billing_cycle_public_bandwidth_usage
            attr_accessor :billing_cycle_public_usage_in
            attr_accessor :billing_cycle_public_usage_out
            attr_accessor :billing_cycle_public_usage_total
            attr_accessor :resource

            class Representer < Softlayer::Billing::Item::Representer
              include Representable::Hash
              include Representable::Coercion
              property :billing_cycle_bandwidth_usage_count, type: BigDecimal
              property :billing_cycle_private_bandwidth_usage_count, type: BigDecimal
              property :billing_cycle_public_bandwidth_usage_count, type: BigDecimal
              property :billing_cycle_private_usage_in, type: Float
              property :billing_cycle_private_usage_out, type: Float
              property :billing_cycle_private_usage_total, type: Integer
              property :billing_cycle_public_usage_in, type: Float
              property :billing_cycle_public_usage_out, type: Float
              property :billing_cycle_public_usage_total, type: Integer
            end
          end
        end
      end
    end
  end
end
