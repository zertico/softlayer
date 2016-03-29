module Softlayer
  class Account
    class Shipment
      module Tracking
        class Data < Softlayer::Entity
          SERVICE = 'SoftLayer_Account_Shipment_Tracking_Data'
          attr_accessor :create_user_id
          attr_accessor :id
          attr_accessor :modify_user_id
          attr_accessor :package_id
          attr_accessor :sequence
          attr_accessor :shipment_id
          attr_accessor :tracking_data
          attr_accessor :create_employee
          attr_accessor :create_user
          attr_accessor :modify_employee
          attr_accessor :modify_user
          attr_accessor :shipment

          def self.create_object(template_object = nil)
            message = {template_object: template_object}
            request(:create_object, Softlayer::Account::Shipment::Tracking::Data, message)
          end

          def self.create_objects(template_objects = nil)
            message = {template_objects: template_objects}
            request(:create_objects, Array[Softlayer::Account::Shipment::Tracking::Data], message)
          end

          def delete_object
            request(:delete_object, Boolean)
          end

          def edit_object(template_object = nil)
            message = {template_object: template_object}
            request(:edit_object, Boolean, message)
          end

          def get_create_employee
            request(:get_create_employee, Softlayer::User::Employee)
          end

          def get_create_user
            request(:get_create_user, Softlayer::User::Customer)
          end

          def get_modify_employee
            request(:get_modify_employee, Softlayer::User::Employee)
          end

          def get_modify_user
            request(:get_modify_user, Softlayer::User::Customer)
          end

          def get_object
            request(:get_object, Softlayer::Account::Shipment::Tracking::Data)
          end

          def get_shipment
            request(:get_shipment, Softlayer::Account::Shipment)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :create_user_id, type: Integer
            property :id, type: Integer
            property :modify_user_id, type: Integer
            property :package_id, type: Integer
            property :sequence, type: Integer
            property :shipment_id, type: Integer
            property :tracking_data, type: String
          end
        end
      end
    end
  end
end
