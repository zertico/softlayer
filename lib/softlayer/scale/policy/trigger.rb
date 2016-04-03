module Softlayer
  module Scale
    class Policy
      class Trigger < Softlayer::Entity
        SERVICE = 'SoftLayer_Scale_Policy_Trigger'
        autoload :OneTime, 'softlayer/scale/policy/trigger/one_time'
        autoload :Repeating, 'softlayer/scale/policy/trigger/repeating'
        autoload :ResourceUse, 'softlayer/scale/policy/trigger/resource_use'
        autoload :Type, 'softlayer/scale/policy/trigger/type'
        attr_accessor :create_date
        attr_accessor :delete_flag
        attr_accessor :id
        attr_accessor :modify_date
        attr_accessor :scale_policy_id
        attr_accessor :type_id
        attr_accessor :scale_policy
        attr_accessor :type

        # template_object
        def self.create_object(message)
          request(:create_object, Softlayer::Scale::Policy::Trigger, message)
        end

        def delete_object
          request(:delete_object, Boolean)
        end

        # template_object
        def edit_object(message)
          request(:edit_object, Boolean, message)
        end

        def get_object
          request(:get_object, Softlayer::Scale::Policy::Trigger)
        end

        def get_scale_policy
          request(:get_scale_policy, Softlayer::Scale::Policy)
        end

        def get_type
          request(:get_type, Softlayer::Scale::Policy::Trigger::Type)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :delete_flag, type: Boolean
          property :id, type: Integer
          property :modify_date, type: DateTime
          property :scale_policy_id, type: Integer
          property :type_id, type: Integer
        end
      end
    end
  end
end
