module Softlayer
  module Scale
    class Policy
      class Action
        class Scale < Softlayer::Scale::Policy::Action
          SERVICE = 'SoftLayer_Scale_Policy_Action_Scale'
          attr_accessor :amount
          attr_accessor :scale_type

          # template_object
          def self.create_object(message)
            request(:create_object, Softlayer::Scale::Policy::Action::Scale, message)
          end

          def delete_object
            request(:delete_object, Boolean)
          end

          # template_object
          def edit_object(message)
            request(:edit_object, Boolean, message)
          end

          def get_object
            request(:get_object, Softlayer::Scale::Policy::Action::Scale)
          end

          def get_scale_policy
            request(:get_scale_policy, Softlayer::Scale::Policy)
          end

          def get_type
            request(:get_type, Softlayer::Scale::Policy::Action::Type)
          end

          class Representer < Softlayer::Scale::Policy::Action::Representer
            include Representable::Hash
            include Representable::Coercion
            property :amount, type: Integer
            property :scale_type, type: String
          end
        end
      end
    end
  end
end
