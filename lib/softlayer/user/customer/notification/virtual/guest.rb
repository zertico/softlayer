module Softlayer
  module User
    class Customer
      module Notification
        module Virtual
          class Guest < Softlayer::Entity
            SERVICE = 'SoftLayer_User_Customer_Notification_Virtual_Guest'
            attr_accessor :guest_id
            attr_accessor :id
            attr_accessor :user_id
            attr_accessor :guest
            attr_accessor :user

            # template_object
            def self.create_object(message)
              request(:create_object, Softlayer::User::Customer::Notification::Virtual::Guest, message)
            end

            # template_objects
            def self.create_objects(message)
              request(:create_objects, Array[Softlayer::User::Customer::Notification::Virtual::Guest], message)
            end

            # template_objects
            def self.delete_objects(message)
              request(:delete_objects, Boolean, message)
            end

            # id
            def self.find_by_guest_id(message)
              request(:find_by_guest_id, Array[Softlayer::User::Customer::Notification::Virtual::Guest], message)
            end

            def get_guest
              request(:get_guest, Softlayer::Virtual::Guest)
            end

            def get_object
              request(:get_object, Softlayer::User::Customer::Notification::Virtual::Guest)
            end

            def get_user
              request(:get_user, Softlayer::User::Customer)
            end

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :guest_id, type: Integer
              property :id, type: Integer
              property :user_id, type: Integer
            end
          end
        end
      end
    end
  end
end
