module Softlayer
  class Notification
    module Occurrence
      class Event < Softlayer::Entity
        SERVICE = 'SoftLayer_Notification_Occurrence_Event'
        autoload :Attachment, 'softlayer/notification/occurrence/event/attachment'
        autoload :Type, 'softlayer/notification/occurrence/event/type'
        attr_accessor :end_date
        attr_accessor :id
        attr_accessor :last_impacted_user_count
        attr_accessor :modify_date
        attr_accessor :recovery_time
        attr_accessor :start_date
        attr_accessor :subject
        attr_accessor :summary
        attr_accessor :system_ticket_id
        attr_accessor :attachment_count
        attr_accessor :impacted_account_count
        attr_accessor :impacted_resource_count
        attr_accessor :impacted_user_count
        attr_accessor :update_count
        attr_accessor :attachments
        attr_accessor :first_update
        attr_accessor :impacted_accounts
        attr_accessor :impacted_resources
        attr_accessor :impacted_users
        attr_accessor :last_update
        attr_accessor :notification_occurrence_event_type
        attr_accessor :status_code
        attr_accessor :updates

        def acknowledge_notification
          request(:acknowledge_notification, Boolean)
        end

        def self.get_all_objects
          request(:get_all_objects, Array[Softlayer::Notification::Occurrence::Event])
        end

        # attachment_id
        def get_attached_file(message)
          request(:get_attached_file, Softlayer::Base64Binary, message)
        end

        def get_attachments
          request(:get_attachments, Array[Softlayer::Notification::Occurrence::Event::Attachment])
        end

        def get_first_update
          request(:get_first_update, Softlayer::Notification::Occurrence::Update)
        end

        def get_impacted_account_count
          request(:get_impacted_account_count, Integer)
        end

        def get_impacted_accounts
          request(:get_impacted_accounts, Array[Softlayer::Notification::Occurrence::Account])
        end

        def get_impacted_device_count
          request(:get_impacted_device_count, Integer)
        end

        def get_impacted_devices
          request(:get_impacted_devices, Array[Softlayer::Notification::Occurrence::Resource])
        end

        def get_impacted_resources
          request(:get_impacted_resources, Array[Softlayer::Notification::Occurrence::Resource])
        end

        def get_impacted_users
          request(:get_impacted_users, Array[Softlayer::Notification::Occurrence::User])
        end

        def get_last_update
          request(:get_last_update, Softlayer::Notification::Occurrence::Update)
        end

        def get_notification_occurrence_event_type
          request(:get_notification_occurrence_event_type, Softlayer::Notification::Occurrence::Event::Type)
        end

        def get_object
          request(:get_object, Softlayer::Notification::Occurrence::Event)
        end

        def get_status_code
          request(:get_status_code, Softlayer::Notification::Occurrence::Status::Code)
        end

        def get_updates
          request(:get_updates, Array[Softlayer::Notification::Occurrence::Update])
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :end_date, type: DateTime
          property :id, type: Integer
          property :last_impacted_user_count, type: Integer
          property :modify_date, type: DateTime
          property :recovery_time, type: Integer
          property :start_date, type: DateTime
          property :subject, type: String
          property :summary, type: String
          property :system_ticket_id, type: Integer
          property :attachment_count, type: BigDecimal
          property :impacted_account_count, type: BigDecimal
          property :impacted_resource_count, type: BigDecimal
          property :impacted_user_count, type: BigDecimal
          property :update_count, type: BigDecimal
        end
      end
    end
  end
end
