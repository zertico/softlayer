module Softlayer
  module Virtual
    module Disk
      class Image < Softlayer::Model
        SERVICE = 'SoftLayer_Virtual_Disk_Image'
        autoload :Software, 'softlayer/virtual/disk/image/software'
        autoload :Type, 'softlayer/virtual/disk/image/type'
        attr_accessor :capacity
        attr_accessor :checksum
        attr_accessor :create_date
        attr_accessor :description
        attr_accessor :id
        attr_accessor :modify_date
        attr_accessor :name
        attr_accessor :parent_id
        attr_accessor :storage_repository_id
        attr_accessor :type_id
        attr_accessor :units
        attr_accessor :uuid
        attr_accessor :block_device_count
        attr_accessor :coalesced_disk_image_count
        attr_accessor :software_reference_count
        attr_accessor :billing_item
        attr_accessor :block_devices
        attr_accessor :coalesced_disk_images
        attr_accessor :copy_on_write_flag
        attr_accessor :local_disk_flag
        attr_accessor :metadata_flag
        attr_accessor :software_references
        attr_accessor :source_disk_image
        attr_accessor :storage_repository
        attr_accessor :storage_repository_type
        attr_accessor :template_block_device
        attr_accessor :type

        def edit_object(template_object = nil)
          message = {template_object: template_object}
          request(:edit_object, Boolean, message)
        end

        def get_billing_item
          request(:get_billing_item, Softlayer::Billing::Item::Virtual::Disk::Image)
        end

        def get_block_devices
          request(:get_block_devices, Array[Softlayer::Virtual::Guest::Block::Device])
        end

        def get_coalesced_disk_images
          request(:get_coalesced_disk_images, Array[Softlayer::Virtual::Disk::Image])
        end

        def get_copy_on_write_flag
          request(:get_copy_on_write_flag, Boolean)
        end

        def get_local_disk_flag
          request(:get_local_disk_flag, Boolean)
        end

        def get_metadata_flag
          request(:get_metadata_flag, Boolean)
        end

        def get_object
          request(:get_object, Softlayer::Virtual::Disk::Image)
        end

        def self.get_public_iso_images
          request(:get_public_iso_images, Array[Softlayer::Virtual::Disk::Image])
        end

        def get_software_references
          request(:get_software_references, Array[Softlayer::Virtual::Disk::Image::Software])
        end

        def get_source_disk_image
          request(:get_source_disk_image, Softlayer::Virtual::Disk::Image)
        end

        def get_storage_repository
          request(:get_storage_repository, Softlayer::Virtual::Storage::Repository)
        end

        def get_storage_repository_type
          request(:get_storage_repository_type, Softlayer::Virtual::Storage::Repository::Type)
        end

        def get_template_block_device
          request(:get_template_block_device, Softlayer::Virtual::Guest::Block::Device::Template)
        end

        def get_type
          request(:get_type, Softlayer::Virtual::Disk::Image::Type)
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :capacity, type: Integer
          property :checksum, type: String
          property :create_date, type: DateTime
          property :description, type: String
          property :id, type: Integer
          property :modify_date, type: DateTime
          property :name, type: String
          property :parent_id, type: Integer
          property :storage_repository_id, type: Integer
          property :type_id, type: Integer
          property :units, type: String
          property :uuid, type: String
          property :block_device_count, type: BigDecimal
          property :coalesced_disk_image_count, type: BigDecimal
          property :software_reference_count, type: BigDecimal
          property :copy_on_write_flag, type: Boolean
          property :local_disk_flag, type: Boolean
          property :metadata_flag, type: Boolean
        end
      end
    end
  end
end
