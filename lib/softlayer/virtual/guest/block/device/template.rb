module Softlayer
  module Virtual
    class Guest
      module Block
        class Device
          class Template < Softlayer::Entity
            autoload :Group, 'softlayer/virtual/guest/block/device/template/group'
            attr_accessor :device
            attr_accessor :disk_image_id
            attr_accessor :disk_space
            attr_accessor :group_id
            attr_accessor :id
            attr_accessor :units
            attr_accessor :disk_image
            attr_accessor :group

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :device, type: String
              property :disk_image_id, type: Integer
              property :disk_space, type: Float
              property :group_id, type: Integer
              property :id, type: Integer
              property :units, type: String
            end
          end
        end
      end
    end
  end
end
