module Softlayer
  class Network
    class Storage
      class Partnership
        class Type < Softlayer::Entity
          attr_accessor :description
          attr_accessor :keyname
          attr_accessor :name

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :description, type: String
            property :keyname, type: String
            property :name, type: String
          end
        end
      end
    end
  end
end
