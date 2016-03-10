module Softlayer
  module Container
    module Account
      module Graph
        class Outputs < Softlayer::Model
          attr_accessor :closed_tickets
          attr_accessor :completed_backup_count
          attr_accessor :conflict_backup_count
          attr_accessor :end_date
          attr_accessor :failed_backup_count
          attr_accessor :graph_error
          attr_accessor :graph_image
          attr_accessor :hardware_uptime
          attr_accessor :inbound_usage
          attr_accessor :open_tickets
          attr_accessor :outbound_usage
          attr_accessor :pending_customer_response_ticket_count
          attr_accessor :start_date
          attr_accessor :url_uptime
          attr_accessor :waiting_employee_response_ticket_count

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :closed_tickets, type: String
            property :completed_backup_count, type: String
            property :conflict_backup_count, type: String
            property :end_date, type: DateTime
            property :failed_backup_count, type: String
            property :graph_error, type: String
            property :hardware_uptime, type: String
            property :inbound_usage, type: String
            property :open_tickets, type: String
            property :outbound_usage, type: String
            property :pending_customer_response_ticket_count, type: String
            property :start_date, type: DateTime
            property :url_uptime, type: String
            property :waiting_employee_response_ticket_count, type: String
          end
        end
      end
    end
  end
end
