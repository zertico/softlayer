module Softlayer
  class Notification
    class Subscriber
      module Delivery
        class Method < Softlayer::Entity
          attr_accessor :active
          attr_accessor :create_date
          attr_accessor :modify_date
          attr_accessor :notification_delivery_method_id
          attr_accessor :notification_subscriber_id
          attr_accessor :notification_delivery_method
          attr_accessor :notification_subscriber

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :active, type: Integer
            property :create_date, type: DateTime
            property :modify_date, type: DateTime
            property :notification_delivery_method_id, type: Integer
            property :notification_subscriber_id, type: Integer
          end
        end
      end
    end
  end
end
