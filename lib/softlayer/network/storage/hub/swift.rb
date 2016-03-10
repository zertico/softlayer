module Softlayer
  class Network
    class Storage
      class Hub
        class Swift < Softlayer::Network::Storage::Hub
          autoload :Container, 'softlayer/network/storage/hub/swift/container'
          autoload :Share, 'softlayer/network/storage/hub/swift/share'
          autoload :Version1, 'softlayer/network/storage/hub/swift/version1'
          attr_accessor :storage_node_count
          attr_accessor :storage_nodes

          class Representer < Softlayer::Network::Storage::Hub::Representer
            include Representable::Hash
            include Representable::Coercion
            property :storage_node_count, type: BigDecimal
          end
        end
      end
    end
  end
end
