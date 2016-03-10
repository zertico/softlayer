module Softlayer
  module Resource
    class Group
      class Member
        module Network
          autoload :Storage, 'softlayer/resource/group/member/network/storage'
          autoload :Subnet, 'softlayer/resource/group/member/network/subnet'
          autoload :Vlan, 'softlayer/resource/group/member/network/vlan'
        end
      end
    end
  end
end
