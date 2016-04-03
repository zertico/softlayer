module Softlayer
  module Provisioning
    class Hook < Softlayer::Entity
      SERVICE = 'SoftLayer_Provisioning_Hook'
      autoload :Type, 'softlayer/provisioning/hook/type'
      attr_accessor :account_id
      attr_accessor :create_date
      attr_accessor :id
      attr_accessor :modify_date
      attr_accessor :name
      attr_accessor :type_id
      attr_accessor :uri
      attr_accessor :account
      attr_accessor :hook_type

      # template_object
      def self.create_object(message)
        request(:create_object, Softlayer::Provisioning::Hook, message)
      end

      def delete_object
        request(:delete_object, Boolean)
      end

      # template_object
      def edit_object(message)
        request(:edit_object, Boolean, message)
      end

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def get_hook_type
        request(:get_hook_type, Softlayer::Provisioning::Hook::Type)
      end

      def get_object
        request(:get_object, Softlayer::Provisioning::Hook)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :create_date, type: DateTime
        property :id, type: Integer
        property :modify_date, type: DateTime
        property :name, type: String
        property :type_id, type: Integer
        property :uri, type: String
      end
    end
  end
end
