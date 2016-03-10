module Softlayer
  module Container
    module Metric
      module Tracking
        module Object
          module Virtual
            module Host
              class Details < Softlayer::Container::Metric::Tracking::Object::Details
                attr_accessor :day
                attr_accessor :max_instances
                attr_accessor :max_memory_usage
                attr_accessor :mean_instances
                attr_accessor :mean_memory_usage
                attr_accessor :min_instances
                attr_accessor :min_memory_usage

                class Representer < Softlayer::Container::Metric::Tracking::Object::Details::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :day, type: DateTime
                  property :max_instances, type: Integer
                  property :max_memory_usage, type: Integer
                  property :mean_instances, type: Float
                  property :mean_memory_usage, type: Float
                  property :min_instances, type: Integer
                  property :min_memory_usage, type: Integer
                end
              end
            end
          end
        end
      end
    end
  end
end
