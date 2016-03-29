module Softlayer
  class Hardware
    class Component < Softlayer::Entity
      autoload :Attribute, 'softlayer/hardware/component/attribute'
      autoload :DriveController, 'softlayer/hardware/component/drive_controller'
      autoload :HardDrive, 'softlayer/hardware/component/hard_drive'
      autoload :Model, 'softlayer/hardware/component/model'
      autoload :Motherboard, 'softlayer/hardware/component/motherboard'
      autoload :NetworkCard, 'softlayer/hardware/component/network_card'
      autoload :Partition, 'softlayer/hardware/component/partition'
      autoload :Processor, 'softlayer/hardware/component/processor'
      autoload :Ram, 'softlayer/hardware/component/ram'
      autoload :RemoteManagement, 'softlayer/hardware/component/remote_management'
      autoload :SecurityDevice, 'softlayer/hardware/component/security_device'
      autoload :Type, 'softlayer/hardware/component/type'
      attr_accessor :hardware_component_model_id
      attr_accessor :hardware_id
      attr_accessor :id
      attr_accessor :modify_date
      attr_accessor :name
      attr_accessor :serial_number
      attr_accessor :service_provider_id
      attr_accessor :children_count
      attr_accessor :downlink_hardware_component_count
      attr_accessor :network_component_count
      attr_accessor :uplink_hardware_component_count
      attr_accessor :capacity
      attr_accessor :children
      attr_accessor :downlink_hardware_components
      attr_accessor :hardware
      attr_accessor :hardware_component_model
      attr_accessor :hardware_component_type
      attr_accessor :network_components
      attr_accessor :owner
      attr_accessor :parent
      attr_accessor :raid_mode
      attr_accessor :service_provider
      attr_accessor :uplink_hardware_components

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :hardware_component_model_id, type: Integer
        property :hardware_id, type: Integer
        property :id, type: Integer
        property :modify_date, type: DateTime
        property :name, type: String
        property :serial_number, type: String
        property :service_provider_id, type: Integer
        property :children_count, type: BigDecimal
        property :downlink_hardware_component_count, type: BigDecimal
        property :network_component_count, type: BigDecimal
        property :uplink_hardware_component_count, type: BigDecimal
        property :capacity, type: Float
        property :raid_mode, type: String
      end
    end
  end
end
