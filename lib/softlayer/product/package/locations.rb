module Softlayer
  module Product
    class Package
      class Locations < Softlayer::Model
        attr_accessor :delivery_time_information
        attr_accessor :is_available
        attr_accessor :location_id
        attr_accessor :package_id
        attr_accessor :location
        attr_accessor :package

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :delivery_time_information, type: String
          property :is_available, type: Integer
          property :location_id, type: Integer
          property :package_id, type: Integer
        end
      end
    end
  end
end
