module Softlayer
  class Network
    module Service
      class Health < Softlayer::Entity
        autoload :Status, 'softlayer/network/service/health/status'
        attr_accessor :create_date
        attr_accessor :location_id
        attr_accessor :modify_date
        attr_accessor :status_id
        attr_accessor :location
        attr_accessor :status

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :location_id, type: Integer
          property :modify_date, type: DateTime
          property :status_id, type: Integer
        end
      end
    end
  end
end
