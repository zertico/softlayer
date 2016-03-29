module Softlayer
  module Virtual
    class Guest
      module Block
        class Device < Softlayer::Entity
          autoload :Status, 'softlayer/virtual/guest/block/device/status'
          autoload :Template, 'softlayer/virtual/guest/block/device/template'
          attr_accessor :bootable_flag
          attr_accessor :create_date
          attr_accessor :device
          attr_accessor :disk_image_id
          attr_accessor :guest_id
          attr_accessor :hot_plug_flag
          attr_accessor :id
          attr_accessor :modify_date
          attr_accessor :mount_mode
          attr_accessor :mount_type
          attr_accessor :status_id
          attr_accessor :uuid
          attr_accessor :disk_image
          attr_accessor :guest
          attr_accessor :status

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :bootable_flag, type: Integer
            property :create_date, type: DateTime
            property :device, type: String
            property :disk_image_id, type: Integer
            property :guest_id, type: Integer
            property :hot_plug_flag, type: Integer
            property :id, type: Integer
            property :modify_date, type: DateTime
            property :mount_mode, type: String
            property :mount_type, type: String
            property :status_id, type: Integer
            property :uuid, type: String
          end
        end
      end
    end
  end
end
