module Softlayer
  module Dns
    class Domain
      class Registration < Softlayer::Entity
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

        # nameservers
        def add_nameservers_to_domain(message)
          request(:add_nameservers_to_domain, Boolean, message)
        end

        # nameserver
        def delete_registered_nameserver(message)
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

        # domain_name
        def self.get_extended_attributes(message)
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

        # domain_name
        def self.get_transfer_information(message)
          request(:get_transfer_information, Softlayer::Container::Dns::Domain::Registration::Transfer::Information, message)
        end

        def lock_domain
          request(:lock_domain, Boolean)
        end

        # domain_name
        def self.lookup_domain(message)
          request(:lookup_domain, Array[Softlayer::Container::Dns::Domain::Registration::Lookup], message)
        end

        # contact
        def modify_contact(message)
          request(:modify_contact, Boolean, message)
        end

        # old_nameserver
        # new_nameserver
        # ip_address
        def modify_registered_nameserver(message)
          request(:modify_registered_nameserver, Boolean, message)
        end

        # nameserver
        # ip_address
        def register_nameserver(message)
          request(:register_nameserver, Boolean, message)
        end

        # nameservers
        def remove_nameservers_from_domain(message)
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

        # authentication_code
        def set_authentication_code(message)
          request(:set_authentication_code, Boolean, message)
        end

        def unlock_domain
          request(:unlock_domain, Boolean)
        end

        class Representer < Softlayer::Entity::Representer
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
