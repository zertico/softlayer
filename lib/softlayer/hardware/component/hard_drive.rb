module Softlayer
  class Hardware
    class Component
      class HardDrive < Softlayer::Hardware::Component
        attr_accessor :partition_count
        attr_accessor :partitions

        class Representer < Softlayer::Hardware::Component::Representer
          include Representable::Hash
          include Representable::Coercion
          property :partition_count, type: BigDecimal
        end
      end
    end
  end
end
