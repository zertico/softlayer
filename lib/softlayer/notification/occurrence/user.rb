module Softlayer
  class Notification
    module Occurrence
      class User < Softlayer::Entity
        SERVICE = 'SoftLayer_Notification_Occurrence_User'
        attr_accessor :acknowledged_flag
        attr_accessor :active
        attr_accessor :id
        attr_accessor :usr_record_id
        attr_accessor :impacted_resource_count
        attr_accessor :impacted_resources
        attr_accessor :notification_occurrence_event
        attr_accessor :user

        def acknowledge
          request(:acknowledge, Boolean)
        end

        def self.get_all_objects
          request(:get_all_objects, Array[Softlayer::Notification::Occurrence::User])
        end

        def get_impacted_device_count
          request(:get_impacted_device_count, Integer)
        end

        def get_impacted_resources
          request(:get_impacted_resources, Array[Softlayer::Notification::Occurrence::Resource])
        end

        def get_notification_occurrence_event
          request(:get_notification_occurrence_event, Softlayer::Notification::Occurrence::Event)
        end

        def get_object
          request(:get_object, Softlayer::Notification::Occurrence::User)
        end

        def get_user
          request(:get_user, Softlayer::User::Customer)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :acknowledged_flag, type: Integer
          property :active, type: Integer
          property :id, type: Integer
          property :usr_record_id, type: Integer
          property :impacted_resource_count, type: BigDecimal
        end
      end
    end
  end
end
