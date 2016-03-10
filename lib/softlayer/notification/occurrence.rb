module Softlayer
  class Notification
    module Occurrence
      autoload :Account, 'softlayer/notification/occurrence/account'
      autoload :Event, 'softlayer/notification/occurrence/event'
      autoload :Resource, 'softlayer/notification/occurrence/resource'
      autoload :Update, 'softlayer/notification/occurrence/update'
      autoload :User, 'softlayer/notification/occurrence/user'
      autoload :Status, 'softlayer/notification/occurrence/status'
    end
  end
end
