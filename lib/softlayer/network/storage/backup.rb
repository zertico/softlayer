module Softlayer
  class Network
    class Storage
      class Backup < Softlayer::Network::Storage
        autoload :Evault, 'softlayer/network/storage/backup/evault'
        attr_accessor :current_cycle_peak_usage
        attr_accessor :previous_cycle_peak_usage

        class Representer < Softlayer::Network::Storage::Representer
          include Representable::Hash
          include Representable::Coercion
          property :current_cycle_peak_usage, type: Integer
          property :previous_cycle_peak_usage, type: Integer
        end
      end
    end
  end
end
