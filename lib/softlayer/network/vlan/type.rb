module Softlayer
  class Network
    class Vlan
      class Type < Softlayer::Entity
        SERVICE = 'SoftLayer_Network_Vlan_Type'
        attr_accessor :description
        attr_accessor :id
        attr_accessor :key_name
        attr_accessor :name

        def get_object
          request(:get_object, Softlayer::Network::Vlan::Type)
        end

        class Representer < Softlayer::Entity::Representer
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
