module Softlayer
  class Brand
    module Restriction
      module Location
        class CustomerCountry < Softlayer::Entity
          SERVICE = 'SoftLayer_Brand_Restriction_Location_CustomerCountry'
          attr_accessor :brand_id
          attr_accessor :customer_country_code
          attr_accessor :location_id
          attr_accessor :brand
          attr_accessor :location

          def self.get_all_objects
            request(:get_all_objects, Array[Softlayer::Brand::Restriction::Location::CustomerCountry])
          end

          def get_brand
            request(:get_brand, Softlayer::Brand)
          end

          def get_location
            request(:get_location, Softlayer::Location)
          end

          def get_object
            request(:get_object, Softlayer::Brand::Restriction::Location::CustomerCountry)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :brand_id, type: Integer
            property :customer_country_code, type: String
            property :location_id, type: Integer
          end
        end
      end
    end
  end
end
