module Softlayer
  module Dns
    class Domain
      class Registration < Softlayer::Model
        SERVICE = 'SoftLayer_Dns_Domain_Registration'
        autoload :Status, 'softlayer/dns/domain/registration/status'
        autoload :Registrant, 'softlayer/dns/domain/registration/registrant'
        attr_accessor :create_date
        attr_accessor :domain_registration_status_id
        attr_accessor :expire_date
        attr_accessor :id
        attr_accessor :locked_flag
        attr_accessor :modify_date
        attr_accessor :name
        attr_accessor :registrant_verification_status_id
        attr_accessor :service_provider_id
        attr_accessor :account
        attr_accessor :domain_registration_status
        attr_accessor :registrant_verification_status
        attr_accessor :service_provider

        def add_nameservers_to_domain(nameservers = nil)
          message = {nameservers: nameservers}
          request(:add_nameservers_to_domain, Boolean, message)
        end

        def delete_registered_nameserver(nameserver = nil)
          message = {nameserver: nameserver}
          request(:delete_registered_nameserver, Boolean, message)
        end

        def get_account
          request(:get_account, Softlayer::Account)
        end

        def get_authentication_code
          request(:get_authentication_code, String)
        end

        def get_domain_information
          request(:get_domain_information, Softlayer::Container::Dns::Domain::Registration::Information)
        end

        def get_domain_nameservers
          request(:get_domain_nameservers, Array[Softlayer::Container::Dns::Domain::Registration::Nameserver])
        end

        def get_domain_registration_status
          request(:get_domain_registration_status, Softlayer::Dns::Domain::Registration::Status)
        end

        def self.get_extended_attributes(domain_name = nil)
          message = {domain_name: domain_name}
          request(:get_extended_attributes, Array[Softlayer::Container::Dns::Domain::Registration::ExtendedAttribute], message)
        end

        def get_object
          request(:get_object, Softlayer::Dns::Domain::Registration)
        end

        def get_registered_nameserver
          request(:get_registered_nameserver, Softlayer::Container::Dns::Domain::Registration::Nameserver)
        end

        def get_registrant_verification_status
          request(:get_registrant_verification_status, Softlayer::Dns::Domain::Registration::Registrant::Verification::Status)
        end

        def get_registrant_verification_status_detail
          request(:get_registrant_verification_status_detail, Softlayer::Container::Dns::Domain::Registration::Registrant::Verification::StatusDetail)
        end

        def get_service_provider
          request(:get_service_provider, Softlayer::Service::Provider)
        end

        def self.get_transfer_information(domain_name = nil)
          message = {domain_name: domain_name}
          request(:get_transfer_information, Softlayer::Container::Dns::Domain::Registration::Transfer::Information, message)
        end

        def lock_domain
          request(:lock_domain, Boolean)
        end

        def self.lookup_domain(domain_name = nil)
          message = {domain_name: domain_name}
          request(:lookup_domain, Array[Softlayer::Container::Dns::Domain::Registration::Lookup], message)
        end

        def modify_contact(contact = nil)
          message = {contact: contact}
          request(:modify_contact, Boolean, message)
        end

        def modify_registered_nameserver(old_nameserver = nil, new_nameserver = nil, ip_address = nil)
          message = {old_nameserver: old_nameserver, new_nameserver: new_nameserver, ip_address: ip_address}
          request(:modify_registered_nameserver, Boolean, message)
        end

        def register_nameserver(nameserver = nil, ip_address = nil)
          message = {nameserver: nameserver, ip_address: ip_address}
          request(:register_nameserver, Boolean, message)
        end

        def remove_nameservers_from_domain(nameservers = nil)
          message = {nameservers: nameservers}
          request(:remove_nameservers_from_domain, Boolean, message)
        end

        def send_authentication_code
          request(:send_authentication_code, Boolean)
        end

        def send_registrant_verification_email
          request(:send_registrant_verification_email, Boolean)
        end

        def send_transfer_approval_email
          request(:send_transfer_approval_email, Boolean)
        end

        def set_authentication_code(authentication_code = nil)
          message = {authentication_code: authentication_code}
          request(:set_authentication_code, Boolean, message)
        end

        def unlock_domain
          request(:unlock_domain, Boolean)
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :domain_registration_status_id, type: Integer
          property :expire_date, type: DateTime
          property :id, type: Integer
          property :locked_flag, type: Integer
          property :modify_date, type: DateTime
          property :name, type: String
          property :registrant_verification_status_id, type: Integer
          property :service_provider_id, type: Integer
        end
      end
    end
  end
end
