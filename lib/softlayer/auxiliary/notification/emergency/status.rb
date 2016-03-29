module Softlayer
  module Auxiliary
    module Notification
      class Emergency
        class Status < Softlayer::Entity
          attr_accessor :name

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :name, type: String
          end
        end
      end
    end
  end
end
