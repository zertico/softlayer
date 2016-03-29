module Softlayer
  class Network
    class Monitor
      module Version1
        class Incident < Softlayer::Entity
          attr_accessor :status

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :status, type: String
          end
        end
      end
    end
  end
end
