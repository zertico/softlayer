module Softlayer
  module Scale
    class Policy
      class Trigger
        class ResourceUse
          class Watch < Softlayer::Model
            SERVICE = 'SoftLayer_Scale_Policy_Trigger_ResourceUse_Watch'
            attr_accessor :algorithm
            attr_accessor :create_date
            attr_accessor :delete_flag
            attr_accessor :id
            attr_accessor :metric
            attr_accessor :modify_date
            attr_accessor :operator
            attr_accessor :period
            attr_accessor :scale_policy_trigger_id
            attr_accessor :value
            attr_accessor :scale_policy_trigger

            def self.create_object(template_object = nil)
              message = {template_object: template_object}
              request(:create_object, Softlayer::Scale::Policy::Trigger::ResourceUse::Watch, message)
            end

            def delete_object
              request(:delete_object, Boolean)
            end

            def edit_object(template_object = nil)
              message = {template_object: template_object}
              request(:edit_object, Boolean, message)
            end

            def get_all_possible_algorithms
              request(:get_all_possible_algorithms, Array[String])
            end

            def get_all_possible_metrics
              request(:get_all_possible_metrics, Array[String])
            end

            def get_all_possible_operators
              request(:get_all_possible_operators, Array[String])
            end

            def get_object
              request(:get_object, Softlayer::Scale::Policy::Trigger::ResourceUse::Watch)
            end

            def get_scale_policy_trigger
              request(:get_scale_policy_trigger, Softlayer::Scale::Policy::Trigger::ResourceUse)
            end

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :algorithm, type: String
              property :create_date, type: DateTime
              property :delete_flag, type: Boolean
              property :id, type: Integer
              property :metric, type: String
              property :modify_date, type: DateTime
              property :operator, type: String
              property :period, type: Integer
              property :scale_policy_trigger_id, type: Integer
              property :value, type: String
            end
          end
        end
      end
    end
  end
end
