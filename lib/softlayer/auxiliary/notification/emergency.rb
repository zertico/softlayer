module Softlayer
  module Auxiliary
    module Notification
      class Emergency < Softlayer::Entity
        SERVICE = 'SoftLayer_Auxiliary_Notification_Emergency'
        autoload :Signature, 'softlayer/auxiliary/notification/emergency/signature'
        autoload :Status, 'softlayer/auxiliary/notification/emergency/status'
        attr_accessor :create_date
        attr_accessor :device
        attr_accessor :duration
        attr_accessor :id
        attr_accessor :location
        attr_accessor :message
        attr_accessor :modify_date
        attr_accessor :services_affected
        attr_accessor :start_date
        attr_accessor :status_id
        attr_accessor :signature
        attr_accessor :status

        def self.get_all_objects
          request(:get_all_objects, Array[Softlayer::Auxiliary::Notification::Emergency])
        end

        def self.get_current_notifications
          request(:get_current_notifications, Array[Softlayer::Auxiliary::Notification::Emergency])
        end

        def get_object
          request(:get_object, Softlayer::Auxiliary::Notification::Emergency)
        end

        def get_signature
          request(:get_signature, Softlayer::Auxiliary::Notification::Emergency::Signature)
        end

        def get_status
          request(:get_status, Softlayer::Auxiliary::Notification::Emergency::Status)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :device, type: String
          property :duration, type: String
          property :id, type: Integer
          property :location, type: String
          property :message, type: String
          property :modify_date, type: DateTime
          property :services_affected, type: String
          property :start_date, type: DateTime
          property :status_id, type: Integer
        end
      end
    end
  end
end
