module Softlayer
  module Scale
    class Group
      class Status < Softlayer::Model
        SERVICE = 'SoftLayer_Scale_Group_Status'
        attr_accessor :id
        attr_accessor :key_name
        attr_accessor :name

        def self.get_all_objects
          request(:get_all_objects, Array[Softlayer::Scale::Group::Status])
        end

        def get_object
          request(:get_object, Softlayer::Scale::Group::Status)
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
