module Softlayer
  class Location
    class Group
      module Location
        class CrossReference < Softlayer::Entity
          SERVICE = 'SoftLayer_Location_Group_Location_CrossReference'
          attr_accessor :location_group_id
          attr_accessor :location_id
          attr_accessor :priority
          attr_accessor :location
          attr_accessor :location_group

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :location_group_id, type: Integer
            property :location_id, type: Integer
            property :priority, type: Integer
          end
        end
      end
    end
  end
end
