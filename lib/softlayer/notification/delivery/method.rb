module Softlayer
  class Notification
    module Delivery
      class Method < Softlayer::Entity
        attr_accessor :active
        attr_accessor :description
        attr_accessor :id
        attr_accessor :key_name
        attr_accessor :name

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :active, type: Integer
          property :description, type: String
          property :id, type: Integer
          property :key_name, type: String
          property :name, type: String
        end
      end
    end
  end
end
