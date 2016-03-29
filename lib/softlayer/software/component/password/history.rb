module Softlayer
  module Software
    class Component
      class Password
        class History < Softlayer::Entity
          attr_accessor :create_date
          attr_accessor :notes
          attr_accessor :password
          attr_accessor :software_component_id
          attr_accessor :username
          attr_accessor :software_component

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :create_date, type: DateTime
            property :notes, type: String
            property :password, type: String
            property :software_component_id, type: Integer
            property :username, type: String
          end
        end
      end
    end
  end
end
