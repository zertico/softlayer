module Softlayer
  class Network
    class Storage
      class Replicant < Softlayer::Network::Storage
        attr_accessor :failback_in_progress_flag
        attr_accessor :volume_name

        class Representer < Softlayer::Network::Storage::Representer
          include Representable::Hash
          include Representable::Coercion
          property :failback_in_progress_flag, type: String
          property :volume_name, type: String
        end
      end
    end
  end
end
