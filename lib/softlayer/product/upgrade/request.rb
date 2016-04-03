module Softlayer
  module Product
    module Upgrade
      class Request < Softlayer::Entity
        SERVICE = 'SoftLayer_Product_Upgrade_Request'
        autoload :Status, 'softlayer/product/upgrade/request/status'
        attr_accessor :account_id
        attr_accessor :create_date
        attr_accessor :employee_id
        attr_accessor :guest_id
        attr_accessor :hardware_id
        attr_accessor :id
        attr_accessor :maintenance_start_time_utc
        attr_accessor :modify_date
        attr_accessor :order_id
        attr_accessor :order_total
        attr_accessor :prorated_total
        attr_accessor :status_id
        attr_accessor :ticket_id
        attr_accessor :user_id
        attr_accessor :account
        attr_accessor :completed_flag
        attr_accessor :invoice
        attr_accessor :order
        attr_accessor :server
        attr_accessor :status
        attr_accessor :ticket
        attr_accessor :user
        attr_accessor :virtual_guest

        def approve_changes
          request(:approve_changes, Boolean)
        end

        def get_account
          request(:get_account, Softlayer::Account)
        end

        def get_completed_flag
          request(:get_completed_flag, Boolean)
        end

        def get_invoice
          request(:get_invoice, Softlayer::Billing::Invoice)
        end

        def get_object
          request(:get_object, Softlayer::Product::Upgrade::Request)
        end

        def get_order
          request(:get_order, Softlayer::Billing::Order)
        end

        def get_server
          request(:get_server, Softlayer::Hardware)
        end

        def get_status
          request(:get_status, Softlayer::Product::Upgrade::Request::Status)
        end

        def get_ticket
          request(:get_ticket, Softlayer::Ticket)
        end

        def get_user
          request(:get_user, Softlayer::User::Customer)
        end

        def get_virtual_guest
          request(:get_virtual_guest, Softlayer::Virtual::Guest)
        end

        # maintenance_start_time
        # maintenance_window_id
        def update_maintenance_window(message)
          request(:update_maintenance_window, Boolean, message)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :account_id, type: Integer
          property :create_date, type: DateTime
          property :employee_id, type: Integer
          property :guest_id, type: Integer
          property :hardware_id, type: Integer
          property :id, type: Integer
          property :maintenance_start_time_utc, type: DateTime
          property :modify_date, type: DateTime
          property :order_id, type: Integer
          property :order_total, type: Float
          property :prorated_total, type: Float
          property :status_id, type: Integer
          property :ticket_id, type: Integer
          property :user_id, type: Integer
          property :completed_flag, type: Boolean
        end
      end
    end
  end
end
