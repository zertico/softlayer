module Softlayer
  class Network
    class Subnet
      class Registration < Softlayer::Model
        SERVICE = 'SoftLayer_Network_Subnet_Registration'
        autoload :Apnic, 'softlayer/network/subnet/registration/apnic'
        autoload :Arin, 'softlayer/network/subnet/registration/arin'
        autoload :Details, 'softlayer/network/subnet/registration/details'
        autoload :Event, 'softlayer/network/subnet/registration/event'
        autoload :Ripe, 'softlayer/network/subnet/registration/ripe'
        autoload :Status, 'softlayer/network/subnet/registration/status'
        attr_accessor :account_id
        attr_accessor :cidr
        attr_accessor :create_date
        attr_accessor :id
        attr_accessor :modify_date
        attr_accessor :network_handle
        attr_accessor :network_identifier
        attr_accessor :regional_internet_registry_handle_id
        attr_accessor :regional_internet_registry_id
        attr_accessor :status_id
        attr_accessor :detail_reference_count
        attr_accessor :event_count
        attr_accessor :account
        attr_accessor :detail_references
        attr_accessor :events
        attr_accessor :network_detail
        attr_accessor :person_detail
        attr_accessor :regional_internet_registry
        attr_accessor :regional_internet_registry_handle
        attr_accessor :status
        attr_accessor :subnet

        def clear_registration
          request(:clear_registration, Boolean)
        end

        def self.create_object(template_object = nil)
          message = {template_object: template_object}
          request(:create_object, Softlayer::Network::Subnet::Registration, message)
        end

        def edit_object(template_object = nil)
          message = {template_object: template_object}
          request(:edit_object, Boolean, message)
        end

        def self.edit_registration_attached_details(person_object_skeleton = nil, network_object_skeleton = nil)
          message = {person_object_skeleton: person_object_skeleton, network_object_skeleton: network_object_skeleton}
          request(:edit_registration_attached_details, Boolean, message)
        end

        def get_account
          request(:get_account, Softlayer::Account)
        end

        def get_detail_references
          request(:get_detail_references, Array[Softlayer::Network::Subnet::Registration::Details])
        end

        def get_events
          request(:get_events, Array[Softlayer::Network::Subnet::Registration::Event])
        end

        def get_network_detail
          request(:get_network_detail, Softlayer::Account::Regional::Registry::Detail)
        end

        def get_object
          request(:get_object, Softlayer::Network::Subnet::Registration)
        end

        def get_person_detail
          request(:get_person_detail, Softlayer::Account::Regional::Registry::Detail)
        end

        def get_regional_internet_registry
          request(:get_regional_internet_registry, Softlayer::Network::Regional::Internet::Registry)
        end

        def get_regional_internet_registry_handle
          request(:get_regional_internet_registry_handle, Softlayer::Account::Rwhois::Handle)
        end

        def get_status
          request(:get_status, Softlayer::Network::Subnet::Registration::Status)
        end

        def get_subnet
          request(:get_subnet, Softlayer::Network::Subnet)
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :account_id, type: Integer
          property :cidr, type: Integer
          property :create_date, type: DateTime
          property :id, type: Integer
          property :modify_date, type: DateTime
          property :network_handle, type: String
          property :network_identifier, type: String
          property :regional_internet_registry_handle_id, type: Integer
          property :regional_internet_registry_id, type: Integer
          property :status_id, type: Integer
          property :detail_reference_count, type: BigDecimal
          property :event_count, type: BigDecimal
        end
      end
    end
  end
end
