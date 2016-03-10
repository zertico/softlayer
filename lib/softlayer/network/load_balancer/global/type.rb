module Softlayer
  class Network
    module LoadBalancer
      module Global
        class Type < Softlayer::Model
          attr_accessor :id
          attr_accessor :name

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :id, type: Integer
            property :name, type: String
          end
        end
      end
    end
  end
end
