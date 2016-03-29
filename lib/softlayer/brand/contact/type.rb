module Softlayer
  class Brand
    class Contact
      class Type < Softlayer::Entity
        attr_accessor :description
        attr_accessor :key_name
        attr_accessor :name

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :description, type: String
          property :key_name, type: String
          property :name, type: String
        end
      end
    end
  end
end
