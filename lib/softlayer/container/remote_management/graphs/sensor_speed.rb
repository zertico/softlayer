module Softlayer
  module Container
    module RemoteManagement
      module Graphs
        class SensorSpeed < Softlayer::Entity
          attr_accessor :graph
          attr_accessor :title

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :title, type: String
          end
        end
      end
    end
  end
end
