module Softlayer
  class Location
    class Group
      class Type < Softlayer::Entity
        SERVICE = 'SoftLayer_Location_Group_Type'
        attr_accessor :name

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :name, type: String
        end
      end
    end
  end
end
