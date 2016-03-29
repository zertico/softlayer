module Softlayer
  class Location
    class Group < Softlayer::Entity
      SERVICE = 'SoftLayer_Location_Group'
      autoload :Pricing, 'softlayer/location/group/pricing'
      autoload :Regional, 'softlayer/location/group/regional'
      autoload :Type, 'softlayer/location/group/type'
      autoload :Location, 'softlayer/location/group/location'
      attr_accessor :description
      attr_accessor :id
      attr_accessor :location_group_type_id
      attr_accessor :name
      attr_accessor :security_level_id
      attr_accessor :location_count
      attr_accessor :location_group_type
      attr_accessor :locations

      def self.get_all_objects
        request(:get_all_objects, Array[Softlayer::Location::Group])
      end

      def get_location_group_type
        request(:get_location_group_type, Softlayer::Location::Group::Type)
      end

      def get_locations
        request(:get_locations, Array[Softlayer::Location])
      end

      def get_object
        request(:get_object, Softlayer::Location::Group)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :description, type: String
        property :id, type: Integer
        property :location_group_type_id, type: Integer
        property :name, type: String
        property :security_level_id, type: Integer
        property :location_count, type: BigDecimal
      end
    end
  end
end
