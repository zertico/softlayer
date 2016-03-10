module Softlayer
  class Network
    class Storage
      class Iscsi
        module Os
          class Type < Softlayer::Model
            SERVICE = 'SoftLayer_Network_Storage_Iscsi_Os_Type'
            attr_accessor :create_date
            attr_accessor :description
            attr_accessor :id
            attr_accessor :key_name
            attr_accessor :name

            def self.get_all_objects
              request(:get_all_objects, Array[Softlayer::Network::Storage::Iscsi::Os::Type])
            end

            def self.get_object
              request(:get_object, Softlayer::Network::Storage::Iscsi::Os::Type)
            end

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :create_date, type: DateTime
              property :description, type: String
              property :id, type: Integer
              property :key_name, type: String
              property :name, type: String
            end
          end
        end
      end
    end
  end
end
