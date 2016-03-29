module Softlayer
  class Network
    class Backbone
      module Location
        class Dependent < Softlayer::Entity
          SERVICE = 'SoftLayer_Network_Backbone_Location_Dependent'
          attr_accessor :dependent_location_id
          attr_accessor :id
          attr_accessor :source_location_id
          attr_accessor :dependent_location
          attr_accessor :source_location

          def self.get_all_objects
            request(:get_all_objects, Array[Softlayer::Network::Backbone::Location::Dependent])
          end

          def get_dependent_location
            request(:get_dependent_location, Softlayer::Location)
          end

          def get_object
            request(:get_object, Softlayer::Network::Backbone::Location::Dependent)
          end

          def self.get_source_dependents_by_name(location_name = nil)
            message = {location_name: location_name}
            request(:get_source_dependents_by_name, Softlayer::Location, message)
          end

          def get_source_location
            request(:get_source_location, Softlayer::Location)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :dependent_location_id, type: Integer
            property :id, type: Integer
            property :source_location_id, type: Integer
          end
        end
      end
    end
  end
end
