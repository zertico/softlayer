module Softlayer
  class Network
    module Bandwidth
      module Version1
        autoload :Allocation, 'softlayer/network/bandwidth/version1/allocation'
        autoload :Allotment, 'softlayer/network/bandwidth/version1/allotment'
        autoload :Host, 'softlayer/network/bandwidth/version1/host'
        autoload :Interface, 'softlayer/network/bandwidth/version1/interface'
        autoload :Usage, 'softlayer/network/bandwidth/version1/usage'
      end
    end
  end
end
