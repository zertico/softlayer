module Softlayer
  module Billing
    class Item
      module Cancellation
        class Request
          class Item < Softlayer::Model
            attr_accessor :billing_item_id
            attr_accessor :cancellation_request_id
            attr_accessor :id
            attr_accessor :immediate_cancellation_flag
            attr_accessor :scheduled_cancellation_date
            attr_accessor :service_reclaim_status_code
            attr_accessor :billing_item
            attr_accessor :cancellation_request

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :billing_item_id, type: Integer
              property :cancellation_request_id, type: Integer
              property :id, type: Integer
              property :immediate_cancellation_flag, type: Boolean
              property :scheduled_cancellation_date, type: DateTime
              property :service_reclaim_status_code, type: String
            end
          end
        end
      end
    end
  end
end
