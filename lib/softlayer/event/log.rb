module Softlayer
  module Event
    class Log < Softlayer::Model
      SERVICE = 'SoftLayer_Event_Log'
      attr_accessor :account_id
      attr_accessor :event_create_date
      attr_accessor :event_name
      attr_accessor :ip_address
      attr_accessor :label
      attr_accessor :meta_data
      attr_accessor :object_id
      attr_accessor :object_name
      attr_accessor :trace_id
      attr_accessor :user_id
      attr_accessor :user_type
      attr_accessor :username
      attr_accessor :user

      def self.get_all_event_names(object_name = nil)
        message = {object_name: object_name}
        request(:get_all_event_names, Array[String], message)
      end

      def self.get_all_event_object_names
        request(:get_all_event_object_names, Array[String])
      end

      def self.get_all_objects
        request(:get_all_objects, Array[Softlayer::Event::Log])
      end

      def self.get_all_user_types
        request(:get_all_user_types, Array[String])
      end

      def get_user
        request(:get_user, Softlayer::User::Customer)
      end

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :event_create_date, type: DateTime
        property :event_name, type: String
        property :ip_address, type: String
        property :label, type: String
        property :object_id, type: Integer
        property :object_name, type: String
        property :trace_id, type: String
        property :user_id, type: Integer
        property :user_type, type: String
        property :username, type: String
      end
    end
  end
end
