module Softlayer
  class Network
    class Subnet
      class Registration
        class Event
          class Type < Softlayer::Entity
            attr_accessor :create_date
            attr_accessor :id
            attr_accessor :key_name
            attr_accessor :modify_date
            attr_accessor :name

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :create_date, type: DateTime
              property :id, type: Integer
              property :key_name, type: String
              property :modify_date, type: DateTime
              property :name, type: String
            end
          end
        end
      end
    end
  end
end
