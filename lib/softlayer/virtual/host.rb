module Softlayer
  module Virtual
    class Host < Softlayer::Entity
      SERVICE = 'SoftLayer_Virtual_Host'
      attr_accessor :account_id
      attr_accessor :create_date
      attr_accessor :description
      attr_accessor :enabled_flag
      attr_accessor :hardware_id
      attr_accessor :id
      attr_accessor :modify_date
      attr_accessor :name
      attr_accessor :physical_memory_capacity
      attr_accessor :uuid
      attr_accessor :guest_count
      attr_accessor :account
      attr_accessor :billed_per_guest_flag
      attr_accessor :billed_per_memory_usage_flag
      attr_accessor :guests
      attr_accessor :hardware
      attr_accessor :metric_tracking_object

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def get_billed_per_guest_flag
        request(:get_billed_per_guest_flag, Boolean)
      end

      def get_billed_per_memory_usage_flag
        request(:get_billed_per_memory_usage_flag, Boolean)
      end

      def get_guests
        request(:get_guests, Array[Softlayer::Virtual::Guest])
      end

      def get_hardware
        request(:get_hardware, Softlayer::Hardware::Server)
      end

      # uuid
      def get_live_guest_by_uuid(message)
        request(:get_live_guest_by_uuid, Softlayer::Virtual::Guest, message)
      end

      def get_live_guest_list
        request(:get_live_guest_list, Array[Softlayer::Virtual::Guest])
      end

      # uuid
      # time
      # limit
      # interval
      def get_live_guest_recent_metric_data(message)
        request(:get_live_guest_recent_metric_data, Array[Softlayer::Metric::Tracking::Object], message)
      end

      def get_metric_tracking_object
        request(:get_metric_tracking_object, Softlayer::Metric::Tracking::Object)
      end

      def get_object
        request(:get_object, Softlayer::Virtual::Host)
      end

      # uuid
      def pause_live_guest(message)
        request(:pause_live_guest, Boolean, message)
      end

      # uuid
      def power_cycle_live_guest(message)
        request(:power_cycle_live_guest, Boolean, message)
      end

      # uuid
      def power_off_live_guest(message)
        request(:power_off_live_guest, Boolean, message)
      end

      # uuid
      def power_on_live_guest(message)
        request(:power_on_live_guest, Boolean, message)
      end

      # uuid
      def reboot_soft_live_guest(message)
        request(:reboot_soft_live_guest, Boolean, message)
      end

      # uuid
      def resume_live_guest(message)
        request(:resume_live_guest, Boolean, message)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :create_date, type: DateTime
        property :description, type: String
        property :enabled_flag, type: Integer
        property :hardware_id, type: Integer
        property :id, type: Integer
        property :modify_date, type: DateTime
        property :name, type: String
        property :physical_memory_capacity, type: Integer
        property :uuid, type: String
        property :guest_count, type: BigDecimal
        property :billed_per_guest_flag, type: Boolean
        property :billed_per_memory_usage_flag, type: Boolean
      end
    end
  end
end
