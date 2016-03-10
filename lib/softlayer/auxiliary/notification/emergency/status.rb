module Softlayer
  module Auxiliary
    module Notification
      class Emergency
        class Status < Softlayer::Model
          attr_accessor :name

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :name, type: String
          end
        end
      end
    end
  end
end
