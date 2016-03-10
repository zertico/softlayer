module Softlayer
  class Location
    class Group
      class Pricing < Softlayer::Location::Group
        SERVICE = 'SoftLayer_Location_Group_Pricing'
        attr_accessor :price_count
        attr_accessor :prices

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
          request(:get_object, Softlayer::Location::Group::Pricing)
        end

        def get_prices
          request(:get_prices, Array[Softlayer::Product::Item::Price])
        end

        class Representer < Softlayer::Location::Group::Representer
          include Representable::Hash
          include Representable::Coercion
          property :price_count, type: BigDecimal
        end
      end
    end
  end
end
