module Softlayer
  module Scale
    class Policy < Softlayer::Entity
      SERVICE = 'SoftLayer_Scale_Policy'
      autoload :Action, 'softlayer/scale/policy/action'
      autoload :Trigger, 'softlayer/scale/policy/trigger'
      attr_accessor :cooldown
      attr_accessor :create_date
      attr_accessor :delete_flag
      attr_accessor :id
      attr_accessor :modify_date
      attr_accessor :name
      attr_accessor :scale_group_id
      attr_accessor :action_count
      attr_accessor :one_time_trigger_count
      attr_accessor :repeating_trigger_count
      attr_accessor :resource_use_trigger_count
      attr_accessor :scale_action_count
      attr_accessor :trigger_count
      attr_accessor :actions
      attr_accessor :one_time_triggers
      attr_accessor :repeating_triggers
      attr_accessor :resource_use_triggers
      attr_accessor :scale_actions
      attr_accessor :scale_group
      attr_accessor :triggers

      # template_object
      def self.create_object(message)
        request(:create_object, Softlayer::Scale::Policy, message)
      end

      def delete_object
        request(:delete_object, Boolean)
      end

      # template_object
      def edit_object(message)
        request(:edit_object, Boolean, message)
      end

      def get_actions
        request(:get_actions, Array[Softlayer::Scale::Policy::Action])
      end

      def get_object
        request(:get_object, Softlayer::Scale::Policy)
      end

      def get_one_time_triggers
        request(:get_one_time_triggers, Array[Softlayer::Scale::Policy::Trigger::OneTime])
      end

      def get_repeating_triggers
        request(:get_repeating_triggers, Array[Softlayer::Scale::Policy::Trigger::Repeating])
      end

      def get_resource_use_triggers
        request(:get_resource_use_triggers, Array[Softlayer::Scale::Policy::Trigger::ResourceUse])
      end

      def get_scale_actions
        request(:get_scale_actions, Array[Softlayer::Scale::Policy::Action::Scale])
      end

      def get_scale_group
        request(:get_scale_group, Softlayer::Scale::Group)
      end

      def get_triggers
        request(:get_triggers, Array[Softlayer::Scale::Policy::Trigger])
      end

      def trigger
        request(:trigger, Array[Softlayer::Scale::Member])
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :cooldown, type: Integer
        property :create_date, type: DateTime
        property :delete_flag, type: Boolean
        property :id, type: Integer
        property :modify_date, type: DateTime
        property :name, type: String
        property :scale_group_id, type: Integer
        property :action_count, type: BigDecimal
        property :one_time_trigger_count, type: BigDecimal
        property :repeating_trigger_count, type: BigDecimal
        property :resource_use_trigger_count, type: BigDecimal
        property :scale_action_count, type: BigDecimal
        property :trigger_count, type: BigDecimal
      end
    end
  end
end
