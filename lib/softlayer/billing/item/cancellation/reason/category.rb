module Softlayer
  module Billing
    class Item
      module Cancellation
        class Reason
          class Category < Softlayer::Entity
            SERVICE = 'SoftLayer_Billing_Item_Cancellation_Reason_Category'
            attr_accessor :id
            attr_accessor :name
            attr_accessor :billing_cancellation_reason_count
            attr_accessor :billing_cancellation_reasons

            def self.get_all_cancellation_reason_categories
              request(:get_all_cancellation_reason_categories, Array[Softlayer::Billing::Item::Cancellation::Reason::Category])
            end

            def get_billing_cancellation_reasons
              request(:get_billing_cancellation_reasons, Array[Softlayer::Billing::Item::Cancellation::Reason])
            end

            def get_object
              request(:get_object, Softlayer::Billing::Item::Cancellation::Reason::Category)
            end

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :id, type: Integer
              property :name, type: String
              property :billing_cancellation_reason_count, type: BigDecimal
            end
          end
        end
      end
    end
  end
end
