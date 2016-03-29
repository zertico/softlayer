module Softlayer
  class Network
    class Storage
      class Schedule
        class Type < Softlayer::Entity
          attr_accessor :id
          attr_accessor :keyname
          attr_accessor :name

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :id, type: Integer
            property :keyname, type: String
            property :name, type: String
          end
        end
      end
    end
  end
end
