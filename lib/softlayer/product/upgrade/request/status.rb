module Softlayer
  module Product
    module Upgrade
      class Request
        class Status < Softlayer::Entity
          attr_accessor :description
          attr_accessor :id
          attr_accessor :name
          attr_accessor :status_code

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :description, type: String
            property :id, type: Integer
            property :name, type: String
            property :status_code, type: String
          end
        end
      end
    end
  end
end
