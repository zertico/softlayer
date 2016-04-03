module Softlayer
  module Scale
    module Network
      class Vlan < Softlayer::Entity
        SERVICE = 'SoftLayer_Scale_Network_Vlan'
        attr_accessor :create_date
        attr_accessor :delete_flag
        attr_accessor :id
        attr_accessor :network_vlan_id
        attr_accessor :scale_group_id
        attr_accessor :network_vlan
        attr_accessor :scale_group

        # template_object
        def self.create_object(message)
          request(:create_object, Softlayer::Scale::Network::Vlan, message)
        end

        def delete_object
          request(:delete_object, Boolean)
        end

        def get_network_vlan
          request(:get_network_vlan, Softlayer::Network::Vlan)
        end

        def get_object
          request(:get_object, Softlayer::Scale::Network::Vlan)
        end

        def get_scale_group
          request(:get_scale_group, Softlayer::Scale::Group)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :delete_flag, type: Boolean
          property :id, type: Integer
          property :network_vlan_id, type: Integer
          property :scale_group_id, type: Integer
        end
      end
    end
  end
end
