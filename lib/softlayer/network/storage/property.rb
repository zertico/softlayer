module Softlayer
  class Network
    class Storage
      class Property < Softlayer::Entity
        autoload :Type, 'softlayer/network/storage/property/type'
        attr_accessor :create_date
        attr_accessor :modify_date
        attr_accessor :value
        attr_accessor :volume_id
        attr_accessor :type
        attr_accessor :volume

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :modify_date, type: DateTime
          property :value, type: String
          property :volume_id, type: Integer
        end
      end
    end
  end
end
