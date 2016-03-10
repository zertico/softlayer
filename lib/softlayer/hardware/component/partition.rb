module Softlayer
  class Hardware
    class Component
      class Partition < Softlayer::Model
        autoload :OperatingSystem, 'softlayer/hardware/component/partition/operating_system'
        autoload :Template, 'softlayer/hardware/component/partition/template'
        attr_accessor :disk_number
        attr_accessor :grow
        attr_accessor :hardware_component_id
        attr_accessor :minimum_size
        attr_accessor :name
        attr_accessor :hardware_component

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :disk_number, type: Integer
          property :grow, type: Integer
          property :hardware_component_id, type: Integer
          property :minimum_size, type: Float
          property :name, type: String
        end
      end
    end
  end
end
