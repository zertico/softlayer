module Softlayer
  module Container
    module RemoteManagement
      class SensorReadingsWithGraphs < Softlayer::Entity
        attr_accessor :raw_data
        attr_accessor :speed_graphs
        attr_accessor :temperature_graphs

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
