module Softlayer
  module Container
    module Product
      class Order
        module Hardware
          class Server
            module Gateway
              class Appliance < Softlayer::Container::Product::Order::Hardware::Server
                attr_accessor :cluster_identifier
                attr_accessor :cluster_order_type
                attr_accessor :cluster_resource_id
                attr_accessor :required_upstream_device_id

                class Representer < Softlayer::Container::Product::Order::Hardware::Server::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :cluster_identifier, type: String
                  property :cluster_order_type, type: String
                  property :cluster_resource_id, type: Integer
                  property :required_upstream_device_id, type: Integer
                end
              end
            end
          end
        end
      end
    end
  end
end
