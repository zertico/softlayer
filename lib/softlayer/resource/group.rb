module Softlayer
  module Resource
    class Group < Softlayer::Entity
      SERVICE = 'SoftLayer_Resource_Group'
      autoload :Attribute, 'softlayer/resource/group/attribute'
      autoload :Member, 'softlayer/resource/group/member'
      autoload :Role, 'softlayer/resource/group/role'
      autoload :Template, 'softlayer/resource/group/template'
      autoload :Descendant, 'softlayer/resource/group/descendant'
      attr_accessor :create_date
      attr_accessor :description
      attr_accessor :id
      attr_accessor :key_name
      attr_accessor :name
      attr_accessor :root_resource_group_id
      attr_accessor :template_id
      attr_accessor :ancestor_group_count
      attr_accessor :attribute_count
      attr_accessor :hardware_member_count
      attr_accessor :member_count
      attr_accessor :subnet_member_count
      attr_accessor :vlan_member_count
      attr_accessor :ancestor_groups
      attr_accessor :attributes
      attr_accessor :hardware_members
      attr_accessor :members
      attr_accessor :root_resource_group
      attr_accessor :subnet_members
      attr_accessor :template
      attr_accessor :vlan_members

      # template_object
      def edit_object(message)
        request(:edit_object, Boolean, message)
      end

      def get_ancestor_groups
        request(:get_ancestor_groups, Array[Softlayer::Resource::Group])
      end

      def get_attributes
        request(:get_attributes, Array[Softlayer::Resource::Group::Attribute])
      end

      def get_hardware_members
        request(:get_hardware_members, Array[Softlayer::Resource::Group::Member])
      end

      def get_members
        request(:get_members, Array[Softlayer::Resource::Group::Member])
      end

      def get_object
        request(:get_object, Softlayer::Resource::Group)
      end

      def get_root_resource_group
        request(:get_root_resource_group, Softlayer::Resource::Group)
      end

      def get_subnet_members
        request(:get_subnet_members, Array[Softlayer::Resource::Group::Member])
      end

      def get_template
        request(:get_template, Softlayer::Resource::Group::Template)
      end

      def get_vlan_members
        request(:get_vlan_members, Array[Softlayer::Resource::Group::Member])
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :create_date, type: DateTime
        property :description, type: String
        property :id, type: Integer
        property :key_name, type: String
        property :name, type: String
        property :root_resource_group_id, type: Integer
        property :template_id, type: Integer
        property :ancestor_group_count, type: BigDecimal
        property :attribute_count, type: BigDecimal
        property :hardware_member_count, type: BigDecimal
        property :member_count, type: BigDecimal
        property :subnet_member_count, type: BigDecimal
        property :vlan_member_count, type: BigDecimal
      end
    end
  end
end
