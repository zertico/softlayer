module Softlayer
  class Network
    class Storage
      class Partnership < Softlayer::Model
        autoload :Type, 'softlayer/network/storage/partnership/type'
        attr_accessor :create_date
        attr_accessor :modify_date
        attr_accessor :partner_volume_id
        attr_accessor :volume_id
        attr_accessor :partner_volume
        attr_accessor :type
        attr_accessor :volume

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :modify_date, type: DateTime
          property :partner_volume_id, type: Integer
          property :volume_id, type: Integer
        end
      end
    end
  end
end
