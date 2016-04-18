module Softlayer
  class Notification
    module Occurrence
      class Resource
        module Network
          module Storage
            autoload :Lockbox, 'softlayer/notification/occurrence/resource/network/storage/lockbox'
            autoload :Nas, 'softlayer/notification/occurrence/resource/network/storage/nas'
            autoload :Iscsi, 'softlayer/notification/occurrence/resource/network/storage/iscsi'
            autoload :NetApp, 'softlayer/notification/occurrence/resource/network/storage/net_app'
          end
        end
      end
    end
  end
end
