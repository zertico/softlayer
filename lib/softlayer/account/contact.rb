module Softlayer
  class Account
    class Contact < Softlayer::Model
      SERVICE = 'SoftLayer_Account_Contact'
      autoload :Type, 'softlayer/account/contact/type'
      attr_accessor :account_id
      attr_accessor :address1
      attr_accessor :address2
      attr_accessor :alternate_phone
      attr_accessor :city
      attr_accessor :company_name
      attr_accessor :country
      attr_accessor :create_date
      attr_accessor :email
      attr_accessor :fax_phone
      attr_accessor :first_name
      attr_accessor :id
      attr_accessor :job_title
      attr_accessor :last_name
      attr_accessor :modify_date
      attr_accessor :office_phone
      attr_accessor :postal_code
      attr_accessor :profile_name
      attr_accessor :state
      attr_accessor :type_id
      attr_accessor :url
      attr_accessor :account
      attr_accessor :type

      def self.create_object(template_object = nil)
        message = {template_object: template_object}
        request(:create_object, Softlayer::Account::Contact, message)
      end

      def delete_object
        request(:delete_object, Boolean)
      end

      def edit_object(template_object = nil)
        message = {template_object: template_object}
        request(:edit_object, Boolean, message)
      end

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def self.get_all_contact_types
        request(:get_all_contact_types, Array[Softlayer::Account::Contact::Type])
      end

      def get_object
        request(:get_object, Softlayer::Account::Contact)
      end

      def get_type
        request(:get_type, Softlayer::Account::Contact::Type)
      end

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :address1, type: String
        property :address2, type: String
        property :alternate_phone, type: String
        property :city, type: String
        property :company_name, type: String
        property :country, type: String
        property :create_date, type: DateTime
        property :email, type: String
        property :fax_phone, type: String
        property :first_name, type: String
        property :id, type: Integer
        property :job_title, type: String
        property :last_name, type: String
        property :modify_date, type: DateTime
        property :office_phone, type: String
        property :postal_code, type: String
        property :profile_name, type: String
        property :state, type: String
        property :type_id, type: Integer
        property :url, type: String
      end
    end
  end
end
