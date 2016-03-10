module Softlayer
  class Network
    class Monitor
      module Version1
        class Incident < Softlayer::Model
          attr_accessor :status

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :status, type: String
          end
        end
      end
    end
  end
end
