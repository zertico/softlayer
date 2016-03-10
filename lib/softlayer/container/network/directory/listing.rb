module Softlayer
  module Container
    module Network
      module Directory
        class Listing < Softlayer::Model
          attr_accessor :file_count
          attr_accessor :name
          attr_accessor :type

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :file_count, type: Integer
            property :name, type: String
            property :type, type: String
          end
        end
      end
    end
  end
end
