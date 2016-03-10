module Softlayer
  class Network
    class Storage
      class Iscsi
        module EqualLogic
          class Version3
            class Snapshot < Softlayer::Network::Storage::Iscsi::EqualLogic::Version3
              attr_accessor :creation_schedule
              attr_accessor :volume_name

              class Representer < Softlayer::Network::Storage::Iscsi::EqualLogic::Version3::Representer
                include Representable::Hash
                include Representable::Coercion
                property :volume_name, type: String
              end
            end
          end
        end
      end
    end
  end
end
