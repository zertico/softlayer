module Softlayer
  module Security
    class Certificate
      class Request < Softlayer::Entity
        SERVICE = 'SoftLayer_Security_Certificate_Request'
        autoload :ServerType, 'softlayer/security/certificate/request/server_type'
        autoload :Status, 'softlayer/security/certificate/request/status'
        attr_accessor :account_id
        attr_accessor :approver_email_address
        attr_accessor :certificate_signing_request
        attr_accessor :common_name
        attr_accessor :create_date
        attr_accessor :effective_date
        attr_accessor :expiration_date
        attr_accessor :id
        attr_accessor :modify_date
        attr_accessor :status_id
        attr_accessor :technical_contact_email_address
        attr_accessor :account
        attr_accessor :certificate_authority_name
        attr_accessor :order
        attr_accessor :order_item
        attr_accessor :status

        def cancel_ssl_order
          request(:cancel_ssl_order, Boolean)
        end

        def get_account
          request(:get_account, Softlayer::Account)
        end

        # common_name
        def self.get_administrator_email_domains(message)
          request(:get_administrator_email_domains, Array[String], message)
        end

        def self.get_administrator_email_prefixes
          request(:get_administrator_email_prefixes, Array[String])
        end

        def get_certificate_authority_name
          request(:get_certificate_authority_name, String)
        end

        def get_object
          request(:get_object, Softlayer::Security::Certificate::Request)
        end

        def get_order
          request(:get_order, Softlayer::Billing::Order)
        end

        def get_order_item
          request(:get_order_item, Softlayer::Billing::Order::Item)
        end

        def get_previous_order_data
          request(:get_previous_order_data, Softlayer::Container::Product::Order::Security::Certificate)
        end

        # account_id
        def self.get_ssl_certificate_requests(message)
          request(:get_ssl_certificate_requests, Array[Softlayer::Security::Certificate::Request], message)
        end

        def get_status
          request(:get_status, Softlayer::Security::Certificate::Request::Status)
        end

        # email_type
        def resend_email(message)
          request(:resend_email, Boolean, message)
        end

        # csr
        # validity_months
        # item_id
        # server_type
        def self.validate_csr(message)
          request(:validate_csr, Boolean, message)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :account_id, type: Integer
          property :approver_email_address, type: String
          property :certificate_signing_request, type: String
          property :common_name, type: String
          property :create_date, type: DateTime
          property :effective_date, type: DateTime
          property :expiration_date, type: DateTime
          property :id, type: Integer
          property :modify_date, type: DateTime
          property :status_id, type: Integer
          property :technical_contact_email_address, type: String
          property :certificate_authority_name, type: String
        end
      end
    end
  end
end
