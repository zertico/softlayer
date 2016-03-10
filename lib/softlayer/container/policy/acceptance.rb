module Softlayer
  module Container
    module Policy
      class Acceptance < Softlayer::Model
        attr_accessor :accepted_flag
        attr_accessor :policy_name
        attr_accessor :product_policy_assignment_id

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :accepted_flag, type: Boolean
          property :policy_name, type: String
          property :product_policy_assignment_id, type: Integer
        end
      end
    end
  end
end
