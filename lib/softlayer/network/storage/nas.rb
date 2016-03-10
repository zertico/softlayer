module Softlayer
  class Network
    class Storage
      class Nas < Softlayer::Network::Storage
        attr_accessor :recent_bytes_used

        class Representer < Softlayer::Network::Storage::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
