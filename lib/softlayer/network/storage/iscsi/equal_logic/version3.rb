module Softlayer
  class Network
    class Storage
      class Iscsi
        module EqualLogic
          class Version3 < Softlayer::Network::Storage::Iscsi
            autoload :Replicant, 'softlayer/network/storage/iscsi/equal_logic/version3/replicant'
            autoload :Snapshot, 'softlayer/network/storage/iscsi/equal_logic/version3/snapshot'

            class Representer < Softlayer::Network::Storage::Iscsi::Representer
              include Representable::Hash
              include Representable::Coercion
            end
          end
        end
      end
    end
  end
end
