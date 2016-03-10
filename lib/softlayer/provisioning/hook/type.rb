module Softlayer
  module Provisioning
    class Hook
      class Type < Softlayer::Model
        SERVICE = 'SoftLayer_Provisioning_Hook_Type'
        attr_accessor :description
        attr_accessor :id
        attr_accessor :key_name
        attr_accessor :name

        def self.get_all_hook_types
          request(:get_all_hook_types, Array[Softlayer::Provisioning::Hook::Type])
        end

        def get_object
          request(:get_object, Softlayer::Provisioning::Hook::Type)
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :description, type: String
          property :id, type: Integer
          property :key_name, type: String
          property :name, type: String
        end
      end
    end
  end
end
