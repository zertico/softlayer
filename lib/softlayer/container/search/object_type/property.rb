module Softlayer
  module Container
    module Search
      class ObjectType
        class Property < Softlayer::Entity
          attr_accessor :name
          attr_accessor :sortable_flag
          attr_accessor :type

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :name, type: String
            property :sortable_flag, type: Boolean
            property :type, type: String
          end
        end
      end
    end
  end
end
