module Softlayer
  class Location
    class Region < Softlayer::Entity
      autoload :Location, 'softlayer/location/region/location'
      attr_accessor :description
      attr_accessor :keyname
      attr_accessor :sort_order
      attr_accessor :location

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :description, type: String
        property :keyname, type: String
        property :sort_order, type: Integer
      end
    end
  end
end
