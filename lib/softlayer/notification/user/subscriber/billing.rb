module Softlayer
  class Notification
    module User
      class Subscriber
        class Billing < Softlayer::Notification::User::Subscriber
          SERVICE = 'SoftLayer_Notification_User_Subscriber_Billing'

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
            request(:get_object, Softlayer::Notification::User::Subscriber::Billing)
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

          class Representer < Softlayer::Notification::User::Subscriber::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
