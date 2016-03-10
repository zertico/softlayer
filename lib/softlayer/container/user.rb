module Softlayer
  module Container
    module User
      autoload :Authentication, 'softlayer/container/user/authentication'
      autoload :Customer, 'softlayer/container/user/customer'
      autoload :Data, 'softlayer/container/user/data'
      autoload :Employee, 'softlayer/container/user/employee'
    end
  end
end
