module Softlayer
  module User
    class Customer
      module Notification
        autoload :Hardware, 'softlayer/user/customer/notification/hardware'
        autoload :Virtual, 'softlayer/user/customer/notification/virtual'
      end
    end
  end
end
