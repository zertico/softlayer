module Softlayer
  class Network
    class Storage
      class History < Softlayer::Entity
        attr_accessor :create_date
        attr_accessor :notes
        attr_accessor :password
        attr_accessor :username
        attr_accessor :account
        attr_accessor :nas_volume

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :notes, type: String
          property :password, type: String
          property :username, type: String
        end
      end
    end
  end
end
