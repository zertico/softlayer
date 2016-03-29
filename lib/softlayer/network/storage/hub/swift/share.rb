module Softlayer
  class Network
    class Storage
      class Hub
        class Swift
          class Share < Softlayer::Entity
            SERVICE = 'SoftLayer_Network_Storage_Hub_Swift_Share'

            def self.get_container_list
              request(:get_container_list, Array[Softlayer::Container::Network::Storage::Hub::ObjectStorage::Folder])
            end

            def self.get_file(file_name = nil, container = nil)
              message = {file_name: file_name, container: container}
              request(:get_file, Softlayer::Container::Network::Storage::Hub::ObjectStorage::File, message)
            end

            def self.get_file_list(container = nil, path = nil)
              message = {container: container, path: path}
              request(:get_file_list, Array[Softlayer::Container::Utility::File::Entity], message)
            end

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
            end
          end
        end
      end
    end
  end
end
