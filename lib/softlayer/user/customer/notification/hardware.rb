module Softlayer
  module User
    class Customer
      module Notification
        class Hardware < Softlayer::Model
          SERVICE = 'SoftLayer_User_Customer_Notification_Hardware'
          attr_accessor :hardware_id
          attr_accessor :id
          attr_accessor :user_id
          attr_accessor :hardware
          attr_accessor :user

          def self.create_object(template_object = nil)
            message = {template_object: template_object}
            request(:create_object, Softlayer::User::Customer::Notification::Hardware, message)
          end

          def self.create_objects(template_objects = nil)
            message = {template_objects: template_objects}
            request(:create_objects, Array[Softlayer::Dns::Domain], message)
          end

          def self.delete_objects(template_objects = nil)
            message = {template_objects: template_objects}
            request(:delete_objects, Boolean, message)
          end

          def self.find_by_hardware_id(hardware_id = nil)
            message = {hardware_id: hardware_id}
            request(:find_by_hardware_id, Array[Softlayer::User::Customer::Notification::Hardware], message)
          end

          def get_hardware
            request(:get_hardware, Softlayer::Hardware)
          end

          def get_object
            request(:get_object, Softlayer::User::Customer::Notification::Hardware)
          end

          def get_user
            request(:get_user, Softlayer::User::Customer)
          end

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :hardware_id, type: Integer
            property :id, type: Integer
            property :user_id, type: Integer
          end
        end
      end
    end
  end
end
