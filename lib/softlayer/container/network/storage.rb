module Softlayer
  module Container
    module Network
      module Storage
        autoload :Host, 'softlayer/container/network/storage/host'
        autoload :NetworkConnectionInformation, 'softlayer/container/network/storage/network_connection_information'
        autoload :Backup, 'softlayer/container/network/storage/backup'
        autoload :Evault, 'softlayer/container/network/storage/evault'
        autoload :Hub, 'softlayer/container/network/storage/hub'
      end
    end
  end
end
