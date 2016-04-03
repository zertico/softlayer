module Softlayer
  class Notification
    class Mobile < Softlayer::Notification
      SERVICE = 'SoftLayer_Notification_Mobile'

      # key_name
      # resource_table_id
      # user_record_id
      def self.create_subscriber_for_mobile_device(message)
        request(:create_subscriber_for_mobile_device, Boolean, message)
      end

      def self.get_all_objects
        request(:get_all_objects, Array[Softlayer::Notification])
      end

      def get_object
        request(:get_object, Softlayer::Notification::Mobile)
      end

      def get_preferences
        request(:get_preferences, Array[Softlayer::Notification::Preference])
      end

      def get_required_preferences
        request(:get_required_preferences, Array[Softlayer::Notification::Preference])
      end

      class Representer < Softlayer::Notification::Representer
        include Representable::Hash
        include Representable::Coercion
      end
    end
  end
end
