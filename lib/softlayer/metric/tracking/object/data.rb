module Softlayer
  module Metric
    module Tracking
      class Object
        class Data < Softlayer::Entity
          autoload :Network, 'softlayer/metric/tracking/object/data/network'
          attr_accessor :counter
          attr_accessor :date_time
          attr_accessor :type

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :counter, type: Float
            property :date_time, type: DateTime
            property :type, type: String
          end
        end
      end
    end
  end
end
