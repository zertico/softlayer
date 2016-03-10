module Softlayer
  class Network
    class Storage
      class Schedule
        class Property
          class Type < Softlayer::Model
            SERVICE = 'SoftLayer_Network_Storage_Schedule_Property_Type'
            attr_accessor :description
            attr_accessor :id
            attr_accessor :keyname
            attr_accessor :name
            attr_accessor :nas_type

            def self.get_all_objects
              request(:get_all_objects, Array[Softlayer::Network::Storage::Schedule::Property::Type])
            end

            def get_object
              request(:get_object, Softlayer::Network::Storage::Schedule::Property::Type)
            end

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :description, type: String
              property :id, type: Integer
              property :keyname, type: String
              property :name, type: String
              property :nas_type, type: String
            end
          end
        end
      end
    end
  end
end
