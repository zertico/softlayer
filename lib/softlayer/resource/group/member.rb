module Softlayer
  module Resource
    class Group
      class Member < Softlayer::Entity
        autoload :Attribute, 'softlayer/resource/group/member/attribute'
        autoload :Hardware, 'softlayer/resource/group/member/hardware'
        autoload :Type, 'softlayer/resource/group/member/type'
        autoload :CloudStack, 'softlayer/resource/group/member/cloud_stack'
        autoload :Network, 'softlayer/resource/group/member/network'
        autoload :Resource, 'softlayer/resource/group/member/resource'
        autoload :Role, 'softlayer/resource/group/member/role'
        autoload :Software, 'softlayer/resource/group/member/software'
        autoload :Virtual, 'softlayer/resource/group/member/virtual'
        attr_accessor :create_date
        attr_accessor :id
        attr_accessor :status
        attr_accessor :attribute_count
        attr_accessor :descendant_member_count
        attr_accessor :role_count
        attr_accessor :attributes
        attr_accessor :descendant_members
        attr_accessor :group
        attr_accessor :roles
        attr_accessor :type

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :id, type: Integer
          property :status, type: String
          property :attribute_count, type: BigDecimal
          property :descendant_member_count, type: BigDecimal
          property :role_count, type: BigDecimal
        end
      end
    end
  end
end
