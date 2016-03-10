module Softlayer
  class Notification
    module Occurrence
      class Resource
        module Network
          module Storage
            autoload :Iscsi, 'softlayer/notification/occurrence/resource/network/storage/iscsi'
            autoload :NetApp, 'softlayer/notification/occurrence/resource/network/storage/net_app'
          end
        end
      end
    end
  end
end
