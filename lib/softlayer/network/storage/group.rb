module Softlayer
  class Network
    class Storage
      class Group < Softlayer::Entity
        SERVICE = 'SoftLayer_Network_Storage_Group'
        autoload :Iscsi, 'softlayer/network/storage/group/iscsi'
        autoload :Nfs, 'softlayer/network/storage/group/nfs'
        autoload :Type, 'softlayer/network/storage/group/type'
        attr_accessor :account_id
        attr_accessor :alias
        attr_accessor :create_date
        attr_accessor :group_type_id
        attr_accessor :id
        attr_accessor :modify_date
        attr_accessor :os_type_id
        attr_accessor :service_resource_id
        attr_accessor :allowed_host_count
        attr_accessor :attached_volume_count
        attr_accessor :account
        attr_accessor :allowed_hosts
        attr_accessor :attached_volumes
        attr_accessor :group_type
        attr_accessor :os_type
        attr_accessor :service_resource

        # allowed_host
        def add_allowed_host(message)
          request(:add_allowed_host, Boolean, message)
        end

        # volume
        def attach_to_volume(message)
          request(:attach_to_volume, Boolean, message)
        end

        # template_object
        def self.create_object(message)
          request(:create_object, Boolean, message)
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

        def self.get_all_objects
          request(:get_all_objects, Array[Softlayer::Network::Storage::Group])
        end

        def get_allowed_hosts
          request(:get_allowed_hosts, Array[Softlayer::Network::Storage::Allowed::Host])
        end

        def get_attached_volumes
          request(:get_attached_volumes, Array[Softlayer::Network::Storage])
        end

        def get_group_type
          request(:get_group_type, Softlayer::Network::Storage::Group::Type)
        end

        def get_network_connection_details
          request(:get_network_connection_details, Softlayer::Container::Network::Storage::NetworkConnectionInformation)
        end

        def get_object
          request(:get_object, Softlayer::Network::Storage::Group)
        end

        def get_os_type
          request(:get_os_type, Softlayer::Network::Storage::Iscsi::Os::Type)
        end

        def get_service_resource
          request(:get_service_resource, Softlayer::Network::Service::Resource)
        end

        # allowed_host
        def remove_allowed_host(message)
          request(:remove_allowed_host, Boolean, message)
        end

        # volume
        def remove_from_volume(message)
          request(:remove_from_volume, Boolean, message)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :account_id, type: Integer
          property :alias, type: String
          property :create_date, type: DateTime
          property :group_type_id, type: Integer
          property :id, type: Integer
          property :modify_date, type: DateTime
          property :os_type_id, type: Integer
          property :service_resource_id, type: Integer
          property :allowed_host_count, type: BigDecimal
          property :attached_volume_count, type: BigDecimal
        end
      end
    end
  end
end
