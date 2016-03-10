module Softlayer
  class Location
    class Group
      class Type < Softlayer::Model
        SERVICE = 'SoftLayer_Location_Group_Type'
        attr_accessor :name

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :name, type: String
        end
      end
    end
  end
end
