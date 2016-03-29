module Softlayer
  class Network
    class Storage
      module Allowed
        class Host < Softlayer::Entity
          SERVICE = 'SoftLayer_Network_Storage_Allowed_Host'
          autoload :Hardware, 'softlayer/network/storage/allowed/host/hardware'
          autoload :IpAddress, 'softlayer/network/storage/allowed/host/ip_address'
          autoload :Subnet, 'softlayer/network/storage/allowed/host/subnet'
          autoload :VirtualGuest, 'softlayer/network/storage/allowed/host/virtual_guest'
          attr_accessor :credential_id
          attr_accessor :id
          attr_accessor :name
          attr_accessor :resource_table_id
          attr_accessor :resource_table_name
          attr_accessor :assigned_group_count
          attr_accessor :assigned_replication_volume_count
          attr_accessor :assigned_volume_count
          attr_accessor :assigned_groups
          attr_accessor :assigned_replication_volumes
          attr_accessor :assigned_volumes
          attr_accessor :credential

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
            request(:get_object, Softlayer::Network::Storage::Allowed::Host)
          end

          def set_credential_password(password = nil)
            message = {password: password}
            request(:set_credential_password, Boolean, message)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :credential_id, type: Integer
            property :id, type: Integer
            property :name, type: String
            property :resource_table_id, type: Integer
            property :resource_table_name, type: String
            property :assigned_group_count, type: BigDecimal
            property :assigned_replication_volume_count, type: BigDecimal
            property :assigned_volume_count, type: BigDecimal
          end
        end
      end
    end
  end
end
