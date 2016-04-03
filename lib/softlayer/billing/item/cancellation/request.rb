module Softlayer
  module Billing
    class Item
      module Cancellation
        class Request < Softlayer::Entity
          SERVICE = 'SoftLayer_Billing_Item_Cancellation_Request'
          autoload :Item, 'softlayer/billing/item/cancellation/request/item'
          autoload :Status, 'softlayer/billing/item/cancellation/request/status'
          attr_accessor :account_id
          attr_accessor :billing_cancel_reason_id
          attr_accessor :create_date
          attr_accessor :id
          attr_accessor :modify_date
          attr_accessor :notes
          attr_accessor :status_id
          attr_accessor :ticket_id
          attr_accessor :item_count
          attr_accessor :account
          attr_accessor :items
          attr_accessor :status
          attr_accessor :ticket
          attr_accessor :user

          # template_object
          def self.create_object(message)
            request(:create_object, Softlayer::Billing::Item::Cancellation::Request, message)
          end

          def get_account
            request(:get_account, Softlayer::Account)
          end

          def self.get_all_cancellation_requests
            request(:get_all_cancellation_requests, Array[Softlayer::Billing::Item::Cancellation::Request])
          end

          # account_id
          # category_code
          def self.get_cancellation_cutoff_date(message)
            request(:get_cancellation_cutoff_date, DateTime, message)
          end

          def get_items
            request(:get_items, Array[Softlayer::Billing::Item::Cancellation::Request::Item])
          end

          def get_object
            request(:get_object, Softlayer::Billing::Item::Cancellation::Request)
          end

          def get_status
            request(:get_status, Softlayer::Billing::Item::Cancellation::Request::Status)
          end

          def get_ticket
            request(:get_ticket, Softlayer::Ticket)
          end

          def get_user
            request(:get_user, Softlayer::User::Customer)
          end

          # item_id
          def remove_cancellation_item(message)
            request(:remove_cancellation_item, Boolean, message)
          end

          # billing_item_id
          def self.validate_billing_item_for_cancellation(message)
            request(:validate_billing_item_for_cancellation, Boolean, message)
          end

          # close_related_ticket_flag
          def void(message)
            request(:void, Boolean, message)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :account_id, type: Integer
            property :billing_cancel_reason_id, type: Integer
            property :create_date, type: DateTime
            property :id, type: Integer
            property :modify_date, type: DateTime
            property :notes, type: String
            property :status_id, type: Integer
            property :ticket_id, type: Integer
            property :item_count, type: BigDecimal
          end
        end
      end
    end
  end
end
