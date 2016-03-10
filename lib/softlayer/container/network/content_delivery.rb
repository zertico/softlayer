module Softlayer
  module Container
    module Network
      module ContentDelivery
        autoload :PointsOfPresence, 'softlayer/container/network/content_delivery/points_of_presence'
        autoload :SupportedProtocol, 'softlayer/container/network/content_delivery/supported_protocol'
        autoload :Authentication, 'softlayer/container/network/content_delivery/authentication'
        autoload :Bandwidth, 'softlayer/container/network/content_delivery/bandwidth'
        autoload :OriginPull, 'softlayer/container/network/content_delivery/origin_pull'
        autoload :PurgeService, 'softlayer/container/network/content_delivery/purge_service'
        autoload :Report, 'softlayer/container/network/content_delivery/report'
      end
    end
  end
end
