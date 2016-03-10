module Softlayer
  module Container
    module Product
      class Order
        module Hardware
          class Server < Softlayer::Container::Product::Order
            autoload :Colocation, 'softlayer/container/product/order/hardware/server/colocation'
            autoload :Upgrade, 'softlayer/container/product/order/hardware/server/upgrade'
            autoload :Gateway, 'softlayer/container/product/order/hardware/server/gateway'
            attr_accessor :monitoring_agent_configuration_template_group_id
            attr_accessor :private_cloud_server_role
            attr_accessor :tags

            class Representer < Softlayer::Container::Product::Order::Representer
              include Representable::Hash
              include Representable::Coercion
              property :monitoring_agent_configuration_template_group_id, type: Integer
              property :private_cloud_server_role, type: String
            end
          end
        end
      end
    end
  end
end
