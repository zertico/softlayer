module Softlayer
  class Notification
    class Subscriber < Softlayer::Model
      autoload :Customer, 'softlayer/notification/subscriber/customer'
      autoload :Delivery, 'softlayer/notification/subscriber/delivery'
      attr_accessor :active
      attr_accessor :create_date
      attr_accessor :id
      attr_accessor :modify_date
      attr_accessor :notification_id
      attr_accessor :notification_subscriber_type_id
      attr_accessor :notification_subscriber_type_resource_id
      attr_accessor :delivery_method_count
      attr_accessor :delivery_methods
      attr_accessor :notification

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :active, type: Integer
        property :create_date, type: DateTime
        property :id, type: Integer
        property :modify_date, type: DateTime
        property :notification_id, type: Integer
        property :notification_subscriber_type_id, type: Integer
        property :notification_subscriber_type_resource_id, type: Integer
        property :delivery_method_count, type: BigDecimal
      end
    end
  end
end
