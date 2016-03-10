module Softlayer
  class Network
    class Storage
      class Iscsi
        module EqualLogic
          class Version3
            class Replicant < Softlayer::Network::Storage::Iscsi::EqualLogic::Version3
              attr_accessor :failback_in_progress_flag
              attr_accessor :volume_name

              class Representer < Softlayer::Network::Storage::Iscsi::EqualLogic::Version3::Representer
                include Representable::Hash
                include Representable::Coercion
                property :failback_in_progress_flag, type: Boolean
                property :volume_name, type: String
              end
            end
          end
        end
      end
    end
  end
end
