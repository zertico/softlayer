module Softlayer
  module Scale
    class Policy
      class Action < Softlayer::Entity
        SERVICE = 'SoftLayer_Scale_Policy_Action'
        autoload :Scale, 'softlayer/scale/policy/action/scale'
        autoload :Type, 'softlayer/scale/policy/action/type'
        attr_accessor :create_date
        attr_accessor :delete_flag
        attr_accessor :id
        attr_accessor :modify_date
        attr_accessor :scale_policy_id
        attr_accessor :type_id
        attr_accessor :scale_policy
        attr_accessor :type

        def delete_object
          request(:delete_object, Boolean)
        end

        # template_object
        def edit_object(message)
          request(:edit_object, Boolean, message)
        end

        def get_object
          request(:get_object, Softlayer::Scale::Policy::Action)
        end

        def get_scale_policy
          request(:get_scale_policy, Softlayer::Scale::Policy)
        end

        def get_type
          request(:get_type, Softlayer::Scale::Policy::Action::Type)
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
