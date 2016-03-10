module Softlayer
  class Notification
    module Occurrence
      class Update < Softlayer::Model
        attr_accessor :contents
        attr_accessor :create_date
        attr_accessor :end_date
        attr_accessor :start_date
        attr_accessor :employee
        attr_accessor :notification_occurrence_event

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :contents, type: String
          property :create_date, type: DateTime
          property :end_date, type: DateTime
          property :start_date, type: DateTime
        end
      end
    end
  end
end
