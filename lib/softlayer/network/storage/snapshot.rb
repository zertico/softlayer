module Softlayer
  class Network
    class Storage
      class Snapshot < Softlayer::Network::Storage
        attr_accessor :creation_schedule
        attr_accessor :volume_name

        class Representer < Softlayer::Network::Storage::Representer
          include Representable::Hash
          include Representable::Coercion
          property :volume_name, type: String
        end
      end
    end
  end
end
