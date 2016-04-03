module Softlayer
  class Notification
    module User
      class Subscriber < Softlayer::Entity
        SERVICE = 'SoftLayer_Notification_User_Subscriber'
        autoload :Billing, 'softlayer/notification/user/subscriber/billing'
        autoload :Mobile, 'softlayer/notification/user/subscriber/mobile'
        autoload :Preference, 'softlayer/notification/user/subscriber/preference'
        autoload :Resource, 'softlayer/notification/user/subscriber/resource'
        autoload :Delivery, 'softlayer/notification/user/subscriber/delivery'
        attr_accessor :active
        attr_accessor :id
        attr_accessor :notification_id
        attr_accessor :user_record_id
        attr_accessor :delivery_method_count
        attr_accessor :preference_count
        attr_accessor :preferences_detail_count
        attr_accessor :delivery_methods
        attr_accessor :notification
        attr_accessor :preferences
        attr_accessor :preferences_details
        attr_accessor :resource_record
        attr_accessor :user_record

        # template_object
        def self.create_object(message)
          request(:create_object, Boolean, message)
        end

        # template_object
        def edit_object(message)
          request(:edit_object, Boolean, message)
        end

        def get_delivery_methods
          request(:get_delivery_methods, Array[Softlayer::Notification::Delivery::Method])
        end

        def get_notification
          request(:get_notification, Softlayer::Notification)
        end

        def get_object
          request(:get_object, Softlayer::Notification::User::Subscriber)
        end

        def get_preferences
          request(:get_preferences, Array[Softlayer::Notification::User::Subscriber::Preference])
        end

        def get_preferences_details
          request(:get_preferences_details, Array[Softlayer::Notification::Preference])
        end

        def get_resource_record
          request(:get_resource_record, Softlayer::Notification::User::Subscriber::Resource)
        end

        def get_user_record
          request(:get_user_record, Softlayer::User::Customer)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :active, type: Integer
          property :id, type: Integer
          property :notification_id, type: Integer
          property :user_record_id, type: Integer
          property :delivery_method_count, type: BigDecimal
          property :preference_count, type: BigDecimal
          property :preferences_detail_count, type: BigDecimal
        end
      end
    end
  end
end
