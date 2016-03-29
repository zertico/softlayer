module Softlayer
  module Provisioning
    module Maintenance
      class Window < Softlayer::Entity
        SERVICE = 'SoftLayer_Provisioning_Maintenance_Window'
        attr_accessor :begin_date
        attr_accessor :day_of_week
        attr_accessor :end_date
        attr_accessor :id
        attr_accessor :location_id
        attr_accessor :portal_tz_id

        def self.add_customer_upgrade_window(customer_upgrade_window = nil)
          message = {customer_upgrade_window: customer_upgrade_window}
          request(:add_customer_upgrade_window, Boolean, message)
        end

        def self.get_maintenance_classifications
          request(:get_maintenance_classifications, Array[Softlayer::Provisioning::Maintenance::Classification])
        end

        def self.get_maintenance_start_end_time(ticket_id = nil)
          message = {ticket_id: ticket_id}
          request(:get_maintenance_start_end_time, Softlayer::Provisioning::Maintenance::Window, message)
        end

        def self.get_maintenance_window_for_ticket(maintenance_window_id = nil)
          message = {maintenance_window_id: maintenance_window_id}
          request(:get_maintenance_window_for_ticket, Array[Softlayer::Provisioning::Maintenance::Window], message)
        end

        def self.get_maintenance_window_tickets_by_ticket_id(ticket_id = nil)
          message = {ticket_id: ticket_id}
          request(:get_maintenance_window_tickets_by_ticket_id, Array[Softlayer::Provisioning::Maintenance::Ticket], message)
        end

        def self.get_maintenance_windows(begin_date = nil, end_date = nil, location_id = nil, slots_needed = nil)
          message = {begin_date: begin_date, end_date: end_date, location_id: location_id, slots_needed: slots_needed}
          request(:get_maintenance_windows, Array[Softlayer::Provisioning::Maintenance::Window], message)
        end

        def self.get_maintence_windows(begin_date = nil, end_date = nil, location_id = nil, slots_needed = nil)
          message = {begin_date: begin_date, end_date: end_date, location_id: location_id, slots_needed: slots_needed}
          request(:get_maintence_windows, Array[Softlayer::Provisioning::Maintenance::Window], message)
        end

        def self.update_customer_upgrade_window(maintenance_start_time = nil, new_maintenance_window_id = nil, ticket_id = nil)
          message = {maintenance_start_time: maintenance_start_time, new_maintenance_window_id: new_maintenance_window_id, ticket_id: ticket_id}
          request(:update_customer_upgrade_window, Boolean, message)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :begin_date, type: DateTime
          property :day_of_week, type: Integer
          property :end_date, type: DateTime
          property :id, type: Integer
          property :location_id, type: Integer
          property :portal_tz_id, type: Integer
        end
      end
    end
  end
end
