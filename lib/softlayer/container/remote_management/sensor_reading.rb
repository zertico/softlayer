module Softlayer
  module Container
    module RemoteManagement
      class SensorReading < Softlayer::Model
        attr_accessor :lower_critical
        attr_accessor :lower_non_critical
        attr_accessor :lower_non_recoverable
        attr_accessor :sensor_id
        attr_accessor :sensor_reading
        attr_accessor :sensor_units
        attr_accessor :status
        attr_accessor :upper_critical
        attr_accessor :upper_non_critical
        attr_accessor :upper_non_recoverable

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :lower_critical, type: String
          property :lower_non_critical, type: String
          property :lower_non_recoverable, type: String
          property :sensor_id, type: String
          property :sensor_reading, type: String
          property :sensor_units, type: String
          property :status, type: String
          property :upper_critical, type: String
          property :upper_non_critical, type: String
          property :upper_non_recoverable, type: String
        end
      end
    end
  end
end
