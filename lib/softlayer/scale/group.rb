module Softlayer
  module Scale
    class Group < Softlayer::Entity
      SERVICE = 'SoftLayer_Scale_Group'
      autoload :Log, 'softlayer/scale/group/log'
      autoload :Status, 'softlayer/scale/group/status'
      attr_accessor :account_id
      attr_accessor :balanced_termination_flag
      attr_accessor :cooldown
      attr_accessor :create_date
      attr_accessor :desired_member_count
      attr_accessor :id
      attr_accessor :last_action_date
      attr_accessor :maximum_member_count
      attr_accessor :minimum_member_count
      attr_accessor :modify_date
      attr_accessor :name
      attr_accessor :regional_group_id
      attr_accessor :suspended_flag
      attr_accessor :termination_policy_id
      attr_accessor :virtual_guest_member_template
      attr_accessor :load_balancer_count
      attr_accessor :log_count
      attr_accessor :network_vlan_count
      attr_accessor :policy_count
      attr_accessor :virtual_guest_asset_count
      attr_accessor :virtual_guest_member_count
      attr_accessor :account
      attr_accessor :load_balancers
      attr_accessor :logs
      attr_accessor :network_vlans
      attr_accessor :policies
      attr_accessor :regional_group
      attr_accessor :status
      attr_accessor :termination_policy
      attr_accessor :virtual_guest_assets
      attr_accessor :virtual_guest_members

      def self.create_object(template_object = nil)
        message = {template_object: template_object}
        request(:create_object, Softlayer::Scale::Group, message)
      end

      def delete_object
        request(:delete_object, Boolean)
      end

      def edit_object(template_object = nil)
        message = {template_object: template_object}
        request(:edit_object, Boolean, message)
      end

      def force_delete_object
        request(:force_delete_object, Boolean)
      end

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def self.get_available_hourly_instance_limit
        request(:get_available_hourly_instance_limit, Integer)
      end

      def self.get_available_regional_groups
        request(:get_available_regional_groups, Array[Softlayer::Location::Group])
      end

      def get_load_balancers
        request(:get_load_balancers, Array[Softlayer::Scale::LoadBalancer])
      end

      def get_logs
        request(:get_logs, Array[Softlayer::Scale::Group::Log])
      end

      def get_network_vlans
        request(:get_network_vlans, Array[Softlayer::Scale::Network::Vlan])
      end

      def get_object
        request(:get_object, Softlayer::Scale::Group)
      end

      def get_policies
        request(:get_policies, Array[Softlayer::Scale::Policy])
      end

      def get_regional_group
        request(:get_regional_group, Softlayer::Location::Group::Regional)
      end

      def get_status
        request(:get_status, Softlayer::Scale::Group::Status)
      end

      def get_termination_policy
        request(:get_termination_policy, Softlayer::Scale::Termination::Policy)
      end

      def get_virtual_guest_assets
        request(:get_virtual_guest_assets, Array[Softlayer::Scale::Asset::Virtual::Guest])
      end

      def get_virtual_guest_members
        request(:get_virtual_guest_members, Array[Softlayer::Scale::Member::Virtual::Guest])
      end

      def resume
        request(:resume, nil)
      end

      def scale(delta = nil)
        message = {delta: delta}
        request(:scale, Array[Softlayer::Scale::Member], message)
      end

      def scale_to(number = nil)
        message = {number: number}
        request(:scale_to, Array[Softlayer::Scale::Member], message)
      end

      def suspend
        request(:suspend, nil)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :balanced_termination_flag, type: Boolean
        property :cooldown, type: Integer
        property :create_date, type: DateTime
        property :desired_member_count, type: Integer
        property :id, type: Integer
        property :last_action_date, type: DateTime
        property :maximum_member_count, type: Integer
        property :minimum_member_count, type: Integer
        property :modify_date, type: DateTime
        property :name, type: String
        property :regional_group_id, type: Integer
        property :suspended_flag, type: Boolean
        property :termination_policy_id, type: Integer
        property :load_balancer_count, type: BigDecimal
        property :log_count, type: BigDecimal
        property :network_vlan_count, type: BigDecimal
        property :policy_count, type: BigDecimal
        property :virtual_guest_asset_count, type: BigDecimal
        property :virtual_guest_member_count, type: BigDecimal
      end
    end
  end
end
