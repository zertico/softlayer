module Softlayer
  module Resource
    class Group
      class Member
        module CloudStack
          module Version3
            autoload :Cluster, 'softlayer/resource/group/member/cloud_stack/version3/cluster'
            autoload :Pod, 'softlayer/resource/group/member/cloud_stack/version3/pod'
            autoload :Zone, 'softlayer/resource/group/member/cloud_stack/version3/zone'
          end
        end
      end
    end
  end
end
