module Softlayer
  class Notification
    module User
      class Subscriber
        module Delivery
          class Method < Softlayer::Model
            attr_accessor :active
            attr_accessor :notification_method_id
            attr_accessor :notification_user_subscriber_id
            attr_accessor :delivery_method
            attr_accessor :notification_user_subscriber

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :active, type: Integer
              property :notification_method_id, type: Integer
              property :notification_user_subscriber_id, type: Integer
            end
          end
        end
      end
    end
  end
end
