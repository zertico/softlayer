module Softlayer
  class Notification
    module Occurrence
      class Event
        class Attachment < Softlayer::Model
          attr_accessor :create_date
          attr_accessor :file_name
          attr_accessor :file_size
          attr_accessor :id
          attr_accessor :notification_occurrence_event_id
          attr_accessor :notification_occurrence_event

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :create_date, type: DateTime
            property :file_name, type: String
            property :file_size, type: String
            property :id, type: Integer
            property :notification_occurrence_event_id, type: Integer
          end
        end
      end
    end
  end
end
