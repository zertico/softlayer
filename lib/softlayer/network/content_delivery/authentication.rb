module Softlayer
  class Network
    module ContentDelivery
      module Authentication
        autoload :Address, 'softlayer/network/content_delivery/authentication/address'
        autoload :Token, 'softlayer/network/content_delivery/authentication/token'
      end
    end
  end
end
