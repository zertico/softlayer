module Softlayer
  class Notification
    module User
      class Subscriber
        class Resource < Softlayer::Model
          attr_accessor :notification_user_subscriber_id
          attr_accessor :resource_table_id
          attr_accessor :notification_user_subscriber

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :notification_user_subscriber_id, type: Integer
            property :resource_table_id, type: Integer
          end
        end
      end
    end
  end
end
