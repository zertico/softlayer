module Softlayer
  module Billing
    module Payment
      class Processor < Softlayer::Entity
        autoload :Method, 'softlayer/billing/payment/processor/method'
        autoload :Type, 'softlayer/billing/payment/processor/type'
        attr_accessor :description
        attr_accessor :name
        attr_accessor :brand_assignment_count
        attr_accessor :payment_method_count
        attr_accessor :brand_assignments
        attr_accessor :owner_account
        attr_accessor :payment_methods
        attr_accessor :type

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :description, type: String
          property :name, type: String
          property :brand_assignment_count, type: BigDecimal
          property :payment_method_count, type: BigDecimal
        end
      end
    end
  end
end
