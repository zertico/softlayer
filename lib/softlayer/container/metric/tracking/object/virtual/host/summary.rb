module Softlayer
  module Container
    module Metric
      module Tracking
        module Object
          module Virtual
            module Host
              class Summary < Softlayer::Container::Metric::Tracking::Object::Summary
                attr_accessor :avg_memory_usage_in_billing_cycle
                attr_accessor :current_bill_cycle_end
                attr_accessor :current_bill_cycle_start
                attr_accessor :last_instance_count
                attr_accessor :last_memory_usage_amount
                attr_accessor :last_poll_time
                attr_accessor :max_instance_in_billing_cycle
                attr_accessor :previous_bill_cycle_end
                attr_accessor :previous_bill_cycle_start
                attr_accessor :virtual_platform_name

                class Representer < Softlayer::Container::Metric::Tracking::Object::Summary::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :avg_memory_usage_in_billing_cycle, type: Integer
                  property :current_bill_cycle_end, type: DateTime
                  property :current_bill_cycle_start, type: DateTime
                  property :last_instance_count, type: Integer
                  property :last_memory_usage_amount, type: Integer
                  property :last_poll_time, type: DateTime
                  property :max_instance_in_billing_cycle, type: Integer
                  property :previous_bill_cycle_end, type: DateTime
                  property :previous_bill_cycle_start, type: DateTime
                  property :virtual_platform_name, type: String
                end
              end
            end
          end
        end
      end
    end
  end
end
