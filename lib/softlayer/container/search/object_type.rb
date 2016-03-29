module Softlayer
  module Container
    module Search
      class ObjectType < Softlayer::Entity
        autoload :Property, 'softlayer/container/search/object_type/property'
        attr_accessor :name
        attr_accessor :properties

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :name, type: String
        end
      end
    end
  end
end
