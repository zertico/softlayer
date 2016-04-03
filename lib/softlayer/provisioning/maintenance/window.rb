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

        # customer_upgrade_window
        def self.add_customer_upgrade_window(message)
          request(:add_customer_upgrade_window, Boolean, message)
        end

        def self.get_maintenance_classifications
          request(:get_maintenance_classifications, Array[Softlayer::Provisioning::Maintenance::Classification])
        end

        # ticket_id
        def self.get_maintenance_start_end_time(message)
          request(:get_maintenance_start_end_time, Softlayer::Provisioning::Maintenance::Window, message)
        end

        # maintenance_window_id
        def self.get_maintenance_window_for_ticket(message)
          request(:get_maintenance_window_for_ticket, Array[Softlayer::Provisioning::Maintenance::Window], message)
        end

        # ticket_id
        def self.get_maintenance_window_tickets_by_ticket_id(message)
          request(:get_maintenance_window_tickets_by_ticket_id, Array[Softlayer::Provisioning::Maintenance::Ticket], message)
        end

        # begin_date
        # end_date
        # location_id
        # slots_needed
        def self.get_maintenance_windows(message)
          request(:get_maintenance_windows, Array[Softlayer::Provisioning::Maintenance::Window], message)
        end

        # begin_date
        # end_date
        # location_id
        # slots_needed
        def self.get_maintence_windows(message)
          request(:get_maintence_windows, Array[Softlayer::Provisioning::Maintenance::Window], message)
        end

        # maintenance_start_time
        # new_maintenance_window_id
        # ticket_id
        def self.update_customer_upgrade_window(message)
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
