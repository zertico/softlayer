module Softlayer
  class Network
    class Storage
      class Group
        class Nfs < Softlayer::Network::Storage::Group
          SERVICE = 'SoftLayer_Network_Storage_Group_Nfs'

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
            request(:get_object, Softlayer::Network::Storage::Group::Nfs)
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

          class Representer < Softlayer::Network::Storage::Group::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
