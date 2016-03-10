module Softlayer
  class Network
    module Bandwidth
      module Version1
        class Host < Softlayer::Model
          attr_accessor :pod_id

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :pod_id, type: Integer
          end
        end
      end
    end
  end
end
