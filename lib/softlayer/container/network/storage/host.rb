module Softlayer
  module Container
    module Network
      module Storage
        class Host < Softlayer::Model
          attr_accessor :id
          attr_accessor :object_type

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :id, type: Integer
            property :object_type, type: String
          end
        end
      end
    end
  end
end
