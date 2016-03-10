module Softlayer
  module Network
    class Monitor
      module Version1
        autoload :Incident, 'softlayer/network/monitor/version1/incident'
        autoload :Query, 'softlayer/network/monitor/version1/query'
      end
    end
  end
end
