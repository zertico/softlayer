module Softlayer
  module Scale
    class Policy
      class Trigger
        class Repeating < Softlayer::Scale::Policy::Trigger
          SERVICE = 'SoftLayer_Scale_Policy_Trigger_Repeating'
          attr_accessor :schedule

          # template_object
          def self.create_object(message)
            request(:create_object, Softlayer::Scale::Policy::Trigger::Repeating, message)
          end

          def delete_object
            request(:delete_object, Boolean)
          end

          # template_object
          def edit_object(message)
            request(:edit_object, Boolean, message)
          end

          def get_object
            request(:get_object, Softlayer::Scale::Policy::Trigger::Repeating)
          end

          def get_scale_policy
            request(:get_scale_policy, Softlayer::Scale::Policy)
          end

          def get_type
            request(:get_type, Softlayer::Scale::Policy::Trigger::Type)
          end

          # expression
          def validate_cron_expression(message)
            request(:validate_cron_expression, nil, message)
          end

          class Representer < Softlayer::Scale::Policy::Trigger::Representer
            include Representable::Hash
            include Representable::Coercion
            property :schedule, type: String
          end
        end
      end
    end
  end
end
