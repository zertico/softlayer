module Softlayer
  module User
    class Customer
      class MobileDevice < Softlayer::Entity
        SERVICE = 'SoftLayer_User_Customer_MobileDevice'
        autoload :OperatingSystem, 'softlayer/user/customer/mobile_device/operating_system'
        autoload :Type, 'softlayer/user/customer/mobile_device/type'
        attr_accessor :create_date
        attr_accessor :display_resolution_xx_y
        attr_accessor :id
        attr_accessor :mobile_device_type_id
        attr_accessor :mobile_operating_system_id
        attr_accessor :model_number
        attr_accessor :modify_date
        attr_accessor :name
        attr_accessor :phone_number
        attr_accessor :serial_number
        attr_accessor :token
        attr_accessor :user_id
        attr_accessor :available_push_notification_subscription_count
        attr_accessor :push_notification_subscription_count
        attr_accessor :available_push_notification_subscriptions
        attr_accessor :customer
        attr_accessor :operating_system
        attr_accessor :push_notification_subscriptions
        attr_accessor :type

        def self.create_object(template_object = nil)
          message = {template_object: template_object}
          request(:create_object, Softlayer::User::Customer::MobileDevice, message)
        end

        def delete_object
          request(:delete_object, Boolean)
        end

        def edit_object(template_object = nil)
          message = {template_object: template_object}
          request(:edit_object, Boolean, message)
        end

        def get_available_push_notification_subscriptions
          request(:get_available_push_notification_subscriptions, Array[Softlayer::Notification])
        end

        def get_customer
          request(:get_customer, Softlayer::User::Customer)
        end

        def get_object
          request(:get_object, Softlayer::User::Customer::MobileDevice)
        end

        def get_operating_system
          request(:get_operating_system, Softlayer::User::Customer::MobileDevice::OperatingSystem)
        end

        def get_push_notification_subscriptions
          request(:get_push_notification_subscriptions, Array[Softlayer::Notification::User::Subscriber])
        end

        def get_type
          request(:get_type, Softlayer::User::Customer::MobileDevice::Type)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :display_resolution_xx_y, type: String
          property :id, type: Integer
          property :mobile_device_type_id, type: Integer
          property :mobile_operating_system_id, type: Integer
          property :model_number, type: String
          property :modify_date, type: DateTime
          property :name, type: String
          property :phone_number, type: String
          property :serial_number, type: String
          property :token, type: String
          property :user_id, type: Integer
          property :available_push_notification_subscription_count, type: BigDecimal
          property :push_notification_subscription_count, type: BigDecimal
        end
      end
    end
  end
end
