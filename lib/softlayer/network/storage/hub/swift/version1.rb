module Softlayer
  class Network
    class Storage
      class Hub
        class Swift
          class Version1 < Softlayer::Network::Storage::Hub::Swift

            class Representer < Softlayer::Network::Storage::Hub::Swift::Representer
              include Representable::Hash
              include Representable::Coercion
            end
          end
        end
      end
    end
  end
end
