module Softlayer
  class Notification
    module Occurrence
      class Resource
        module Network
          autoload :Application, 'softlayer/notification/occurrence/resource/network/application'
          autoload :Storage, 'softlayer/notification/occurrence/resource/network/storage'
        end
      end
    end
  end
end
