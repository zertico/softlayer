module Softlayer
  class Account
    class Media < Softlayer::Entity
      SERVICE = 'SoftLayer_Account_Media'
      autoload :Type, 'softlayer/account/media/type'
      autoload :Data, 'softlayer/account/media/data'
      attr_accessor :description
      attr_accessor :id
      attr_accessor :request_id
      attr_accessor :serial_number
      attr_accessor :type_id
      attr_accessor :account
      attr_accessor :create_user
      attr_accessor :datacenter
      attr_accessor :modify_employee
      attr_accessor :modify_user
      attr_accessor :request
      attr_accessor :type
      attr_accessor :volume

      def edit_object(template_object = nil)
        message = {template_object: template_object}
        request(:edit_object, Boolean, message)
      end

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def self.get_all_media_types
        request(:get_all_media_types, Array[Softlayer::Account::Media::Type])
      end

      def get_create_user
        request(:get_create_user, Softlayer::User::Customer)
      end

      def get_datacenter
        request(:get_datacenter, Softlayer::Location)
      end

      def get_modify_employee
        request(:get_modify_employee, Softlayer::User::Employee)
      end

      def get_modify_user
        request(:get_modify_user, Softlayer::User::Customer)
      end

      def get_object
        request(:get_object, Softlayer::Account::Media)
      end

      def get_request
        request(:get_request, Softlayer::Account::Media::Data::Transfer::Request)
      end

      def get_type
        request(:get_type, Softlayer::Account::Media::Type)
      end

      def get_volume
        request(:get_volume, Softlayer::Network::Storage)
      end

      def self.remove_media_from_list(media_template = nil)
        message = {media_template: media_template}
        request(:remove_media_from_list, Integer, message)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :description, type: String
        property :id, type: Integer
        property :request_id, type: Integer
        property :serial_number, type: String
        property :type_id, type: Integer
      end
    end
  end
end
