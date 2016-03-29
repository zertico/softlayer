module Softlayer
  module Container
    module Network
      module LoadBalancer
        class StatusEntry < Softlayer::Entity
          attr_accessor :content
          attr_accessor :label

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :content, type: String
            property :label, type: String
          end
        end
      end
    end
  end
end
