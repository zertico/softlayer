module Softlayer
  module Container
    module Product
      class Order
        module Monitoring
          class Package < Softlayer::Container::Product::Order
            attr_accessor :configuration_template_groups
            attr_accessor :server_type

            class Representer < Softlayer::Container::Product::Order::Representer
              include Representable::Hash
              include Representable::Coercion
              property :server_type, type: String
            end
          end
        end
      end
    end
  end
end
