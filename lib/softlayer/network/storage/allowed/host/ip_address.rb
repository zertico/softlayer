module Softlayer
  class Network
    class Storage
      module Allowed
        class Host
          class IpAddress < Softlayer::Network::Storage::Allowed::Host
            SERVICE = 'SoftLayer_Network_Storage_Allowed_Host_IpAddress'
            attr_accessor :resource

            def self.create_object(template_object = nil)
              message = {template_object: template_object}
              request(:create_object, Boolean, message)
            end

            def delete_object
              request(:delete_object, Boolean)
            end

            def edit_object(template_object = nil)
              message = {template_object: template_object}
              request(:edit_object, Boolean, message)
            end

            def get_assigned_groups
              request(:get_assigned_groups, Array[Softlayer::Network::Storage::Group])
            end

            def get_assigned_replication_volumes
              request(:get_assigned_replication_volumes, Array[Softlayer::Network::Storage])
            end

            def get_assigned_volumes
              request(:get_assigned_volumes, Array[Softlayer::Network::Storage])
            end

            def get_credential
              request(:get_credential, Softlayer::Network::Storage::Credential)
            end

            def get_object
              request(:get_object, Softlayer::Network::Storage::Allowed::Host::IpAddress)
            end

            def get_resource
              request(:get_resource, Softlayer::Network::Subnet::IpAddress)
            end

            def set_credential_password(password = nil)
              message = {password: password}
              request(:set_credential_password, Boolean, message)
            end

            class Representer < Softlayer::Network::Storage::Allowed::Host::Representer
              include Representable::Hash
              include Representable::Coercion
            end
          end
        end
      end
    end
  end
end
