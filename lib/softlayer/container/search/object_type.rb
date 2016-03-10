module Softlayer
  module Container
    module Search
      class ObjectType < Softlayer::Model
        autoload :Property, 'softlayer/container/search/object_type/property'
        attr_accessor :name
        attr_accessor :properties

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :name, type: String
        end
      end
    end
  end
end
