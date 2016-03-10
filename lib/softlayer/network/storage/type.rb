module Softlayer
  class Network
    class Storage
      class Type < Softlayer::Model
        attr_accessor :description
        attr_accessor :id
        attr_accessor :key_name
        attr_accessor :volume_count
        attr_accessor :volumes

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :description, type: String
          property :id, type: Integer
          property :key_name, type: String
          property :volume_count, type: BigDecimal
        end
      end
    end
  end
end
