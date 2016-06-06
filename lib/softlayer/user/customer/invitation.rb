module Softlayer
  module User
    class Customer
      class Invitation < Softlayer::Entity
        SERVICE = 'SoftLayer_User_Customer_Invitation'
        attr_accessor :code
        attr_accessor :create_date
        attr_accessor :creator_id
        attr_accessor :creator_type
        attr_accessor :email
        attr_accessor :existing_blue_id_flag
        attr_accessor :expiration_date
        attr_accessor :id
        attr_accessor :is_federated_email_domain_flag
        attr_accessor :modify_date
        attr_accessor :response_date
        attr_accessor :status_id
        attr_accessor :user_id
        attr_accessor :user

        def get_object
          request(:get_object, Softlayer::User::Customer::Invitation)
        end

        def get_user
          request(:get_user, Softlayer::User::Customer)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :code, type: String
          property :create_date, type: DateTime
          property :creator_id, type: Integer
          property :creator_type, type: String
          property :email, type: String
          property :existing_blue_id_flag, type: Integer
          property :expiration_date, type: DateTime
          property :id, type: Integer
          property :is_federated_email_domain_flag, type: Integer
          property :modify_date, type: DateTime
          property :response_date, type: DateTime
          property :status_id, type: Integer
          property :user_id, type: Integer
        end
      end
    end
  end
end
