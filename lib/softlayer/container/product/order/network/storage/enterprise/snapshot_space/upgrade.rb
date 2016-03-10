module Softlayer
  module Container
    module Product
      class Order
        class Network
          module Storage
            class Enterprise
              class SnapshotSpace
                class Upgrade < Softlayer::Container::Product::Order::Network::Storage::Enterprise::SnapshotSpace

                  class Representer < Softlayer::Container::Product::Order::Network::Storage::Enterprise::SnapshotSpace::Representer
                    include Representable::Hash
                    include Representable::Coercion
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
