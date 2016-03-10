module Softlayer
  class Network
    module ContentDelivery
      class Account
        class Status < Softlayer::Model
          attr_accessor :description
          attr_accessor :id
          attr_accessor :name

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :description, type: String
            property :id, type: Integer
            property :name, type: String
          end
        end
      end
    end
  end
end
