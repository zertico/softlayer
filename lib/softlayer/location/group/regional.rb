module Softlayer
  class Location
    class Group
      class Regional < Softlayer::Location::Group
        SERVICE = 'SoftLayer_Location_Group_Regional'
        attr_accessor :datacenter_count
        attr_accessor :datacenters
        attr_accessor :preferred_datacenter

        def self.get_all_objects
          request(:get_all_objects, Array[Softlayer::Location::Group])
        end

        def get_datacenters
          request(:get_datacenters, Array[Softlayer::Location])
        end

        def get_location_group_type
          request(:get_location_group_type, Softlayer::Location::Group::Type)
        end

        def get_locations
          request(:get_locations, Array[Softlayer::Location])
        end

        def get_object
          request(:get_object, Softlayer::Location::Group::Regional)
        end

        def get_preferred_datacenter
          request(:get_preferred_datacenter, Softlayer::Location::Datacenter)
        end

        class Representer < Softlayer::Location::Group::Representer
          include Representable::Hash
          include Representable::Coercion
          property :datacenter_count, type: BigDecimal
        end
      end
    end
  end
end
