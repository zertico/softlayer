module Softlayer
  module User
    module Permission
      autoload :Action, 'softlayer/user/permission/action'
      autoload :Group, 'softlayer/user/permission/group'
      autoload :Role, 'softlayer/user/permission/role'
    end
  end
end
