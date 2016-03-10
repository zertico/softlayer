module Softlayer
  module Container
    module Bandwidth
      class Projection < Softlayer::Model
        attr_accessor :allowed_usage
        attr_accessor :estimated_usage
        attr_accessor :hardware_id
        attr_accessor :projected_usage
        attr_accessor :server_name
        attr_accessor :start_date

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :allowed_usage, type: String
          property :estimated_usage, type: String
          property :hardware_id, type: Integer
          property :projected_usage, type: String
          property :server_name, type: String
          property :start_date, type: DateTime
        end
      end
    end
  end
end
