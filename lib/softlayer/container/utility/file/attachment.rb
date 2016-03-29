module Softlayer
  module Container
    module Utility
      module File
        class Attachment < Softlayer::Entity
          attr_accessor :data
          attr_accessor :filename

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :filename, type: String
          end
        end
      end
    end
  end
end
