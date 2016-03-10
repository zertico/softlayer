module Softlayer
  module Virtual
    class Guest
      module Block
        class Device
          class Template
            class Group < Softlayer::Model
              SERVICE = 'SoftLayer_Virtual_Guest_Block_Device_Template_Group'
              autoload :Accounts, 'softlayer/virtual/guest/block/device/template/group/accounts'
              autoload :Status, 'softlayer/virtual/guest/block/device/template/group/status'
              attr_accessor :account_id
              attr_accessor :create_date
              attr_accessor :id
              attr_accessor :name
              attr_accessor :note
              attr_accessor :parent_id
              attr_accessor :public_flag
              attr_accessor :status_id
              attr_accessor :summary
              attr_accessor :transaction_id
              attr_accessor :user_record_id
              attr_accessor :account_contact_count
              attr_accessor :account_reference_count
              attr_accessor :block_device_count
              attr_accessor :children_count
              attr_accessor :datacenter_count
              attr_accessor :ssh_key_count
              attr_accessor :tag_reference_count
              attr_accessor :account
              attr_accessor :account_contacts
              attr_accessor :account_references
              attr_accessor :block_devices
              attr_accessor :block_devices_disk_space_total
              attr_accessor :children
              attr_accessor :datacenter
              attr_accessor :datacenters
              attr_accessor :flex_image_flag
              attr_accessor :global_identifier
              attr_accessor :image_type
              attr_accessor :image_type_key_name
              attr_accessor :parent
              attr_accessor :ssh_keys
              attr_accessor :status
              attr_accessor :storage_repository
              attr_accessor :tag_references
              attr_accessor :transaction

              def add_locations(locations = nil)
                message = {locations: locations}
                request(:add_locations, Boolean, message)
              end

              def copy_to_external_source(configuration = nil)
                message = {configuration: configuration}
                request(:copy_to_external_source, Boolean, message)
              end

              def self.create_from_external_source(configuration = nil)
                message = {configuration: configuration}
                request(:create_from_external_source, Softlayer::Virtual::Guest::Block::Device::Template::Group, message)
              end

              def create_public_archive_transaction(group_name = nil, summary = nil, note = nil, locations = nil)
                message = {group_name: group_name, summary: summary, note: note, locations: locations}
                request(:create_public_archive_transaction, Integer, message)
              end

              def delete_object
                request(:delete_object, Softlayer::Provisioning::Version1::Transaction)
              end

              def deny_sharing_access(account_id = nil)
                message = {account_id: account_id}
                request(:deny_sharing_access, Boolean, message)
              end

              def edit_object(template_object = nil)
                message = {template_object: template_object}
                request(:edit_object, Boolean, message)
              end

              def get_account
                request(:get_account, Softlayer::Account)
              end

              def get_account_contacts
                request(:get_account_contacts, Array[Softlayer::Account::Contact])
              end

              def get_account_references
                request(:get_account_references, Array[Softlayer::Virtual::Guest::Block::Device::Template::Group::Accounts])
              end

              def get_block_devices
                request(:get_block_devices, Array[Softlayer::Virtual::Guest::Block::Device::Template])
              end

              def get_block_devices_disk_space_total
                request(:get_block_devices_disk_space_total, Float)
              end

              def get_children
                request(:get_children, Array[Softlayer::Virtual::Guest::Block::Device::Template::Group])
              end

              def get_datacenter
                request(:get_datacenter, Softlayer::Location)
              end

              def get_datacenters
                request(:get_datacenters, Array[Softlayer::Location])
              end

              def get_flex_image_flag
                request(:get_flex_image_flag, Boolean)
              end

              def get_global_identifier
                request(:get_global_identifier, String)
              end

              def get_image_type
                request(:get_image_type, String)
              end

              def get_image_type_key_name
                request(:get_image_type_key_name, String)
              end

              def get_object
                request(:get_object, Softlayer::Virtual::Guest::Block::Device::Template::Group)
              end

              def get_parent
                request(:get_parent, Softlayer::Virtual::Guest::Block::Device::Template::Group)
              end

              def self.get_public_customer_owned_images
                request(:get_public_customer_owned_images, Array[Softlayer::Virtual::Guest::Block::Device::Template::Group])
              end

              def self.get_public_images
                request(:get_public_images, Array[Softlayer::Virtual::Guest::Block::Device::Template::Group])
              end

              def get_ssh_keys
                request(:get_ssh_keys, Array[Softlayer::Security::Ssh::Key])
              end

              def get_status
                request(:get_status, Softlayer::Virtual::Guest::Block::Device::Template::Group::Status)
              end

              def get_storage_locations
                request(:get_storage_locations, Array[Softlayer::Location])
              end

              def get_storage_repository
                request(:get_storage_repository, Softlayer::Virtual::Storage::Repository)
              end

              def get_tag_references
                request(:get_tag_references, Array[Softlayer::Tag::Reference])
              end

              def get_transaction
                request(:get_transaction, Softlayer::Provisioning::Version1::Transaction)
              end

              def self.get_vhd_import_software_descriptions
                request(:get_vhd_import_software_descriptions, Array[Softlayer::Software::Description])
              end

              def permit_sharing_access(account_id = nil)
                message = {account_id: account_id}
                request(:permit_sharing_access, Boolean, message)
              end

              def remove_locations(locations = nil)
                message = {locations: locations}
                request(:remove_locations, Boolean, message)
              end

              def set_available_locations(locations = nil)
                message = {locations: locations}
                request(:set_available_locations, Boolean, message)
              end

              def set_tags(tags = nil)
                message = {tags: tags}
                request(:set_tags, Boolean, message)
              end

              class Representer < Representable::Decorator
                include Representable::Hash
                include Representable::Coercion
                property :account_id, type: Integer
                property :create_date, type: DateTime
                property :id, type: Integer
                property :name, type: String
                property :note, type: String
                property :parent_id, type: Integer
                property :public_flag, type: Integer
                property :status_id, type: Integer
                property :summary, type: String
                property :transaction_id, type: Integer
                property :user_record_id, type: Integer
                property :account_contact_count, type: BigDecimal
                property :account_reference_count, type: BigDecimal
                property :block_device_count, type: BigDecimal
                property :children_count, type: BigDecimal
                property :datacenter_count, type: BigDecimal
                property :ssh_key_count, type: BigDecimal
                property :tag_reference_count, type: BigDecimal
                property :block_devices_disk_space_total, type: Float
                property :flex_image_flag, type: Boolean
                property :global_identifier, type: String
                property :image_type, type: String
                property :image_type_key_name, type: String
              end
            end
          end
        end
      end
    end
  end
end
