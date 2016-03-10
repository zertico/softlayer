module Softlayer
  class Location
    class Reservation
      class Rack < Softlayer::Model
        SERVICE = 'SoftLayer_Location_Reservation_Rack'
        autoload :Member, 'softlayer/location/reservation/rack/member'
        attr_accessor :location_id
        attr_accessor :location_reservation_id
        attr_accessor :network_connection_capacity
        attr_accessor :network_connection_reservation
        attr_accessor :power_connection_capacity
        attr_accessor :power_connection_reservation
        attr_accessor :slot_capacity
        attr_accessor :slot_reservation
        attr_accessor :children_count
        attr_accessor :allotment
        attr_accessor :children
        attr_accessor :location
        attr_accessor :location_reservation

        def get_allotment
          request(:get_allotment, Softlayer::Network::Bandwidth::Version1::Allotment)
        end

        def get_children
          request(:get_children, Array[Softlayer::Location::Reservation::Rack::Member])
        end

        def get_location
          request(:get_location, Softlayer::Location)
        end

        def get_location_reservation
          request(:get_location_reservation, Softlayer::Location::Reservation)
        end

        def get_object
          request(:get_object, Softlayer::Location::Reservation::Rack)
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :location_id, type: Integer
          property :location_reservation_id, type: Integer
          property :network_connection_capacity, type: Integer
          property :network_connection_reservation, type: Integer
          property :power_connection_capacity, type: Integer
          property :power_connection_reservation, type: Integer
          property :slot_capacity, type: Integer
          property :slot_reservation, type: Integer
          property :children_count, type: BigDecimal
        end
      end
    end
  end
end
