module Softlayer
  class Hardware
    class Component
      class Model
        class Generic < Softlayer::Model
          autoload :Attribute, 'softlayer/hardware/component/model/generic/attribute'
          autoload :MarketingFeature, 'softlayer/hardware/component/model/generic/marketing_feature'
          attr_accessor :capacity
          attr_accessor :description
          attr_accessor :hardware_component_type_id
          attr_accessor :id
          attr_accessor :units
          attr_accessor :upgrade_priority
          attr_accessor :hardware_component_model_count
          attr_accessor :hardware_component_models
          attr_accessor :hardware_component_type
          attr_accessor :marketing_features

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :capacity, type: Float
            property :description, type: String
            property :hardware_component_type_id, type: Integer
            property :id, type: Integer
            property :units, type: String
            property :upgrade_priority, type: Integer
            property :hardware_component_model_count, type: BigDecimal
          end
        end
      end
    end
  end
end
