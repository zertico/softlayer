module Softlayer
  class Account
    class Note < Softlayer::Model
      SERVICE = 'SoftLayer_Account_Note'
      autoload :History, 'softlayer/account/note/history'
      autoload :Type, 'softlayer/account/note/type'
      attr_accessor :account_id
      attr_accessor :create_date
      attr_accessor :id
      attr_accessor :modify_date
      attr_accessor :note
      attr_accessor :note_type_id
      attr_accessor :user_id
      attr_accessor :note_history_count
      attr_accessor :account
      attr_accessor :customer
      attr_accessor :note_history
      attr_accessor :note_type

      def self.create_object(template_object = nil)
        message = {template_object: template_object}
        request(:create_object, Softlayer::Account::Note, message)
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

      def get_customer
        request(:get_customer, Softlayer::User::Customer)
      end

      def get_note_history
        request(:get_note_history, Array[Softlayer::Account::Note::History])
      end

      def get_note_type
        request(:get_note_type, Softlayer::Account::Note::Type)
      end

      def get_object
        request(:get_object, Softlayer::Account::Note)
      end

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :create_date, type: DateTime
        property :id, type: Integer
        property :modify_date, type: DateTime
        property :note, type: String
        property :note_type_id, type: Integer
        property :user_id, type: Integer
        property :note_history_count, type: BigDecimal
      end
    end
  end
end
