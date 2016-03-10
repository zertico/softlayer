module Softlayer
  class Location
    class Reservation
      class Rack
        class Member < Softlayer::Model
          SERVICE = 'SoftLayer_Location_Reservation_Rack_Member'
          attr_accessor :id
          attr_accessor :location_id
          attr_accessor :location
          attr_accessor :location_reservation_rack

          def get_location
            request(:get_location, Softlayer::Location)
          end

          def get_location_reservation_rack
            request(:get_location_reservation_rack, Softlayer::Location::Reservation)
          end

          def get_object
            request(:get_object, Softlayer::Location::Reservation::Rack::Member)
          end

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :id, type: Integer
            property :location_id, type: Integer
          end
        end
      end
    end
  end
end
