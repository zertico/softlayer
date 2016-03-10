module Softlayer
  class Network
    class Storage
      class Group
        class Type < Softlayer::Model
          SERVICE = 'SoftLayer_Network_Storage_Group_Type'
          attr_accessor :id
          attr_accessor :key_name
          attr_accessor :name

          def self.get_all_objects
            request(:get_all_objects, Array[Softlayer::Network::Storage::Group::Type])
          end

          def get_object
            request(:get_object, Softlayer::Network::Storage::Group::Type)
          end

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :id, type: Integer
            property :key_name, type: String
            property :name, type: String
          end
        end
      end
    end
  end
end
