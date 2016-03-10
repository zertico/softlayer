module Softlayer
  class Network
    class Storage
      class Event < Softlayer::Model
        attr_accessor :create_date
        attr_accessor :message
        attr_accessor :schedule_id
        attr_accessor :type_id
        attr_accessor :volume_id
        attr_accessor :schedule
        attr_accessor :volume

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :message, type: String
          property :schedule_id, type: Integer
          property :type_id, type: Integer
          property :volume_id, type: Integer
        end
      end
    end
  end
end
