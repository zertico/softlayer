module Softlayer
  class Network
    module Message
      autoload :Delivery, 'softlayer/network/message/delivery'
      autoload :Queue, 'softlayer/network/message/queue'
    end
  end
end
