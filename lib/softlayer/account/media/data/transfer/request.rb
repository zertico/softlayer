module Softlayer
  class Account
    class Media
      module Data
        module Transfer
          class Request < Softlayer::Model
            SERVICE = 'SoftLayer_Account_Media_Data_Transfer_Request'
            autoload :Status, 'softlayer/account/media/data/transfer/request/status'
            attr_accessor :account_id
            attr_accessor :create_user_id
            attr_accessor :end_date
            attr_accessor :id
            attr_accessor :modify_user_id
            attr_accessor :start_date
            attr_accessor :status_id
            attr_accessor :active_ticket_count
            attr_accessor :shipment_count
            attr_accessor :ticket_count
            attr_accessor :account
            attr_accessor :active_tickets
            attr_accessor :billing_item
            attr_accessor :create_user
            attr_accessor :media
            attr_accessor :modify_employee
            attr_accessor :modify_user
            attr_accessor :shipments
            attr_accessor :status
            attr_accessor :tickets

            def edit_object(template_object = nil)
              message = {template_object: template_object}
              request(:edit_object, Boolean, message)
            end

            def get_account
              request(:get_account, Softlayer::Account)
            end

            def get_active_tickets
              request(:get_active_tickets, Array[Softlayer::Ticket])
            end

            def self.get_all_request_statuses
              request(:get_all_request_statuses, Array[Softlayer::Account::Media::Data::Transfer::Request::Status])
            end

            def get_billing_item
              request(:get_billing_item, Softlayer::Billing::Item)
            end

            def get_create_user
              request(:get_create_user, Softlayer::User::Customer)
            end

            def get_media
              request(:get_media, Softlayer::Account::Media)
            end

            def get_modify_employee
              request(:get_modify_employee, Softlayer::User::Employee)
            end

            def get_modify_user
              request(:get_modify_user, Softlayer::User::Customer)
            end

            def get_object
              request(:get_object, Softlayer::Account::Media::Data::Transfer::Request)
            end

            def get_shipments
              request(:get_shipments, Array[Softlayer::Account::Shipment])
            end

            def get_status
              request(:get_status, Softlayer::Account::Media::Data::Transfer::Request::Status)
            end

            def get_tickets
              request(:get_tickets, Array[Softlayer::Ticket])
            end

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :account_id, type: Integer
              property :create_user_id, type: Integer
              property :end_date, type: DateTime
              property :id, type: Integer
              property :modify_user_id, type: Integer
              property :start_date, type: DateTime
              property :status_id, type: Integer
              property :active_ticket_count, type: BigDecimal
              property :shipment_count, type: BigDecimal
              property :ticket_count, type: BigDecimal
            end
          end
        end
      end
    end
  end
end
