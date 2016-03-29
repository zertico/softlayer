module Softlayer
  class Network
    module Security
      module Scanner
        class Request < Softlayer::Entity
          SERVICE = 'SoftLayer_Network_Security_Scanner_Request'
          autoload :Status, 'softlayer/network/security/scanner/request/status'
          attr_accessor :account_id
          attr_accessor :create_date
          attr_accessor :guest_id
          attr_accessor :hardware_id
          attr_accessor :host_id
          attr_accessor :id
          attr_accessor :ip_address
          attr_accessor :modify_date
          attr_accessor :status_id
          attr_accessor :account
          attr_accessor :guest
          attr_accessor :hardware
          attr_accessor :requestor_owned_flag
          attr_accessor :status

          def self.create_object(template_object = nil)
            message = {template_object: template_object}
            request(:create_object, Softlayer::Network::Security::Scanner::Request, message)
          end

          def get_account
            request(:get_account, Softlayer::Account)
          end

          def get_guest
            request(:get_guest, Softlayer::Virtual::Guest)
          end

          def get_hardware
            request(:get_hardware, Softlayer::Hardware)
          end

          def get_object
            request(:get_object, Softlayer::Network::Security::Scanner::Request)
          end

          def get_report
            request(:get_report, String)
          end

          def get_requestor_owned_flag
            request(:get_requestor_owned_flag, Boolean)
          end

          def get_status
            request(:get_status, Softlayer::Network::Security::Scanner::Request::Status)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :account_id, type: Integer
            property :create_date, type: DateTime
            property :guest_id, type: Integer
            property :hardware_id, type: Integer
            property :host_id, type: Integer
            property :id, type: Integer
            property :ip_address, type: String
            property :modify_date, type: DateTime
            property :status_id, type: Integer
            property :requestor_owned_flag, type: Boolean
          end
        end
      end
    end
  end
end
