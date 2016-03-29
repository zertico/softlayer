module Softlayer
  class Network
    class Component
      module Duplex
        class Mode < Softlayer::Entity
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
