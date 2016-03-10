module Softlayer
  module Container
    module Account
      module Discount
        class Program < Softlayer::Model
          attr_accessor :applied_credit
          attr_accessor :is_participant
          attr_accessor :lifetime_applied_credit
          attr_accessor :lifetime_credit
          attr_accessor :lifetime_remaining_credit
          attr_accessor :maximum_active_orders
          attr_accessor :monthly_credit
          attr_accessor :post_tax_remaining_credit
          attr_accessor :program_end_date
          attr_accessor :program_name
          attr_accessor :remaining_credit
          attr_accessor :remaining_credit_tax

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :applied_credit, type: Float
            property :is_participant, type: Boolean
            property :lifetime_applied_credit, type: Float
            property :lifetime_credit, type: Float
            property :lifetime_remaining_credit, type: Float
            property :maximum_active_orders, type: Float
            property :monthly_credit, type: Float
            property :post_tax_remaining_credit, type: Float
            property :program_end_date, type: DateTime
            property :program_name, type: String
            property :remaining_credit, type: Float
            property :remaining_credit_tax, type: Float
          end
        end
      end
    end
  end
end
