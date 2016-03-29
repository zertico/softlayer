module Softlayer
  module Billing
    class Item
      module Cancellation
        class Reason < Softlayer::Entity
          SERVICE = 'SoftLayer_Billing_Item_Cancellation_Reason'
          autoload :Category, 'softlayer/billing/item/cancellation/reason/category'
          attr_accessor :billing_cancel_reason_category_id
          attr_accessor :id
          attr_accessor :key_name
          attr_accessor :reason
          attr_accessor :billing_item_count
          attr_accessor :billing_cancellation_reason_category
          attr_accessor :billing_items
          attr_accessor :translated_reason

          def self.get_all_cancellation_reasons
            request(:get_all_cancellation_reasons, Array[Softlayer::Billing::Item::Cancellation::Reason])
          end

          def get_billing_cancellation_reason_category
            request(:get_billing_cancellation_reason_category, Softlayer::Billing::Item::Cancellation::Reason::Category)
          end

          def get_billing_items
            request(:get_billing_items, Array[Softlayer::Billing::Item])
          end

          def get_object
            request(:get_object, Softlayer::Billing::Item::Cancellation::Reason)
          end

          def get_translated_reason
            request(:get_translated_reason, String)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :billing_cancel_reason_category_id, type: Integer
            property :id, type: Integer
            property :key_name, type: String
            property :reason, type: String
            property :billing_item_count, type: BigDecimal
            property :translated_reason, type: String
          end
        end
      end
    end
  end
end
