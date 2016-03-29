module Softlayer
  module Provisioning
    module Maintenance
      class Slots < Softlayer::Entity
        SERVICE = 'SoftLayer_Provisioning_Maintenance_Slots'
        attr_accessor :available_slots

        def get_object
          request(:get_object, Softlayer::Provisioning::Maintenance::Slots)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :available_slots, type: Integer
        end
      end
    end
  end
end
