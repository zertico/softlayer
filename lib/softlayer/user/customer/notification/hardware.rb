module Softlayer
  module User
    class Customer
      module Notification
        class Hardware < Softlayer::Entity
          SERVICE = 'SoftLayer_User_Customer_Notification_Hardware'
          attr_accessor :hardware_id
          attr_accessor :id
          attr_accessor :user_id
          attr_accessor :hardware
          attr_accessor :user

          # template_object
          def self.create_object(message)
            request(:create_object, Softlayer::User::Customer::Notification::Hardware, message)
          end

          # template_objects
          def self.create_objects(message)
            request(:create_objects, Array[Softlayer::Dns::Domain], message)
          end

          # template_objects
          def self.delete_objects(message)
            request(:delete_objects, Boolean, message)
          end

          # hardware_id
          def self.find_by_hardware_id(message)
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

          class Representer < Softlayer::Entity::Representer
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
