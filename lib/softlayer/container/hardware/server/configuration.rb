module Softlayer
  module Container
    module Hardware
      module Server
        class Configuration < Softlayer::Entity
          attr_accessor :add_to_spare_pool_after_os_reload
          attr_accessor :custom_provision_script_uri
          attr_accessor :drive_retention_flag
          attr_accessor :erase_hard_drives
          attr_accessor :hard_drives
          attr_accessor :image_template_id
          attr_accessor :item_prices
          attr_accessor :reset_ipmi_password
          attr_accessor :ssh_key_ids
          attr_accessor :upgrade_bios
          attr_accessor :upgrade_hard_drive_firmware

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :add_to_spare_pool_after_os_reload, type: Integer
            property :custom_provision_script_uri, type: String
            property :drive_retention_flag, type: Boolean
            property :erase_hard_drives, type: Integer
            property :image_template_id, type: Integer
            property :reset_ipmi_password, type: Integer
            property :upgrade_bios, type: Integer
            property :upgrade_hard_drive_firmware, type: Integer
          end
        end
      end
    end
  end
end
