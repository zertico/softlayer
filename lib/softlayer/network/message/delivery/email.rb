module Softlayer
  module Network
    module Message
      class Delivery
        module Email
          autoload :Sendgrid, 'softlayer/network/message/delivery/email/sendgrid'
        end
      end
    end
  end
end
