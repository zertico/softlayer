module Softlayer
  class Location
    class Reservation < Softlayer::Entity
      SERVICE = 'SoftLayer_Location_Reservation'
      autoload :Rack, 'softlayer/location/reservation/rack'
      attr_accessor :allotment_id
      attr_accessor :id
      attr_accessor :location_id
      attr_accessor :name
      attr_accessor :notes
      attr_accessor :account
      attr_accessor :allotment
      attr_accessor :billing_item
      attr_accessor :location
      attr_accessor :location_reservation_rack

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def self.get_account_reservations
        request(:get_account_reservations, Array[Softlayer::Location::Reservation])
      end

      def get_allotment
        request(:get_allotment, Softlayer::Network::Bandwidth::Version1::Allotment)
      end

      def get_billing_item
        request(:get_billing_item, Softlayer::Billing::Item)
      end

      def get_location
        request(:get_location, Softlayer::Location)
      end

      def get_location_reservation_rack
        request(:get_location_reservation_rack, Softlayer::Location::Reservation::Rack)
      end

      def get_object
        request(:get_object, Softlayer::Location::Reservation)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :allotment_id, type: Integer
        property :id, type: Integer
        property :location_id, type: Integer
        property :name, type: String
        property :notes, type: String
      end
    end
  end
end
