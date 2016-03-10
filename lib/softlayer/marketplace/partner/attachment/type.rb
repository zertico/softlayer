module Softlayer
  module Marketplace
    class Partner
      class Attachment
        class Type < Softlayer::Model
          attr_accessor :id
          attr_accessor :key_name
          attr_accessor :type

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :id, type: Integer
            property :key_name, type: String
            property :type, type: String
          end
        end
      end
    end
  end
end
