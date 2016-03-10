module Softlayer
  module User
    class Customer
      module Notification
        module Virtual
          class Guest < Softlayer::Model
            SERVICE = 'SoftLayer_User_Customer_Notification_Virtual_Guest'
            attr_accessor :guest_id
            attr_accessor :id
            attr_accessor :user_id
            attr_accessor :guest
            attr_accessor :user

            def self.create_object(template_object = nil)
              message = {template_object: template_object}
              request(:create_object, Softlayer::User::Customer::Notification::Virtual::Guest, message)
            end

            def self.create_objects(template_objects = nil)
              message = {template_objects: template_objects}
              request(:create_objects, Array[Softlayer::User::Customer::Notification::Virtual::Guest], message)
            end

            def self.delete_objects(template_objects = nil)
              message = {template_objects: template_objects}
              request(:delete_objects, Boolean, message)
            end

            def self.find_by_guest_id(id = nil)
              message = {id: id}
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

            class Representer < Representable::Decorator
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
