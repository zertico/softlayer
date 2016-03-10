module Softlayer
  module Scale
    class Policy
      class Trigger
        class ResourceUse < Softlayer::Scale::Policy::Trigger
          SERVICE = 'SoftLayer_Scale_Policy_Trigger_ResourceUse'
          autoload :Watch, 'softlayer/scale/policy/trigger/resource_use/watch'
          attr_accessor :watch_count
          attr_accessor :watches

          def self.create_object(template_object = nil)
            message = {template_object: template_object}
            request(:create_object, Softlayer::Scale::Policy::Trigger::ResourceUse, message)
          end

          def delete_object
            request(:delete_object, Boolean)
          end

          def edit_object(template_object = nil)
            message = {template_object: template_object}
            request(:edit_object, Boolean, message)
          end

          def get_object
            request(:get_object, Softlayer::Scale::Policy::Trigger::ResourceUse)
          end

          def get_scale_policy
            request(:get_scale_policy, Softlayer::Scale::Policy)
          end

          def get_type
            request(:get_type, Softlayer::Scale::Policy::Trigger::Type)
          end

          def get_watches
            request(:get_watches, Array[Softlayer::Scale::Policy::Trigger::ResourceUse::Watch])
          end

          class Representer < Softlayer::Scale::Policy::Trigger::Representer
            include Representable::Hash
            include Representable::Coercion
            property :watch_count, type: BigDecimal
          end
        end
      end
    end
  end
end
