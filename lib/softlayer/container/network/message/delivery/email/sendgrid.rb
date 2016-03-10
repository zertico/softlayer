module Softlayer
  module Container
    module Network
      module Message
        module Delivery
          class Email
            module Sendgrid
              autoload :Statistics, 'softlayer/container/network/message/delivery/email/sendgrid/statistics'
              autoload :Account, 'softlayer/container/network/message/delivery/email/sendgrid/account'
              autoload :Customer, 'softlayer/container/network/message/delivery/email/sendgrid/customer'
              autoload :List, 'softlayer/container/network/message/delivery/email/sendgrid/list'
            end
          end
        end
      end
    end
  end
end
