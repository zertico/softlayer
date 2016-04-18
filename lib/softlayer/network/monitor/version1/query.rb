module Softlayer
  class Network
    class Monitor
      module Version1
        module Query
          autoload :Host, 'softlayer/network/monitor/version1/query/host'
          autoload :ResponseType, 'softlayer/network/monitor/version1/query/response_type'
          autoload :Result, 'softlayer/network/monitor/version1/query/result'
          autoload :Type, 'softlayer/network/monitor/version1/query/type'
        end
      end
    end
  end
end
