module Softlayer
  module Provisioning
    module Maintenance
      class Ticket < Softlayer::Model
        SERVICE = 'SoftLayer_Provisioning_Maintenance_Ticket'
        attr_accessor :maint_class_id
        attr_accessor :maint_window_id
        attr_accessor :maintenance_date
        attr_accessor :ticket_id
        attr_accessor :available_slots
        attr_accessor :maintenance_class
        attr_accessor :ticket

        def get_available_slots
          request(:get_available_slots, Softlayer::Provisioning::Maintenance::Slots)
        end

        def get_maintenance_class
          request(:get_maintenance_class, Softlayer::Provisioning::Maintenance::Classification)
        end

        def get_object
          request(:get_object, Softlayer::Provisioning::Maintenance::Ticket)
        end

        def get_ticket
          request(:get_ticket, Softlayer::Ticket)
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :maint_class_id, type: Integer
          property :maint_window_id, type: Integer
          property :maintenance_date, type: DateTime
          property :ticket_id, type: Integer
        end
      end
    end
  end
end
