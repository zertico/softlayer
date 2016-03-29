module Softlayer
  class Account
    module Reports
      class Request < Softlayer::Entity
        SERVICE = 'SoftLayer_Account_Reports_Request'
        attr_accessor :account_contact_id
        attr_accessor :account_id
        attr_accessor :compliance_report_type_id
        attr_accessor :create_date
        attr_accessor :employee_record_id
        attr_accessor :id
        attr_accessor :modify_date
        attr_accessor :nda
        attr_accessor :notes
        attr_accessor :report
        attr_accessor :request_key
        attr_accessor :status
        attr_accessor :ticket_id
        attr_accessor :usr_record_id
        attr_accessor :account
        attr_accessor :account_contact
        attr_accessor :report_type
        attr_accessor :ticket
        attr_accessor :user

        def self.create_request(contact = nil, reason = nil, report_type = nil)
          message = {contact: contact, reason: reason, report_type: report_type}
          request(:create_request, Softlayer::Account::Reports::Request, message)
        end

        def get_account
          request(:get_account, Softlayer::Account)
        end

        def get_account_contact
          request(:get_account_contact, Softlayer::Account::Contact)
        end

        def self.get_all_objects
          request(:get_all_objects, Softlayer::Account::Reports::Request)
        end

        def get_object
          request(:get_object, Softlayer::Account::Reports::Request)
        end

        def get_report_type
          request(:get_report_type, Softlayer::Compliance::Report::Type)
        end

        def self.get_request_by_request_key(request_key = nil)
          message = {request_key: request_key}
          request(:get_request_by_request_key, Softlayer::Account::Reports::Request, message)
        end

        def get_ticket
          request(:get_ticket, Softlayer::Ticket)
        end

        def get_user
          request(:get_user, Softlayer::User::Customer)
        end

        def self.send_report_email(request = nil)
          message = {request: request}
          request(:send_report_email, Boolean, message)
        end

        def self.update_ticket_on_decline(request = nil)
          message = {request: request}
          request(:update_ticket_on_decline, Boolean, message)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :account_contact_id, type: Integer
          property :account_id, type: Integer
          property :compliance_report_type_id, type: String
          property :create_date, type: DateTime
          property :employee_record_id, type: Integer
          property :id, type: Integer
          property :modify_date, type: DateTime
          property :nda, type: String
          property :notes, type: String
          property :report, type: String
          property :request_key, type: String
          property :status, type: String
          property :ticket_id, type: Integer
          property :usr_record_id, type: Integer
        end
      end
    end
  end
end
