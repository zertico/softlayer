module Softlayer
  class Network
    class Subnet
      class Registration
        class Event < Softlayer::Entity
          autoload :Type, 'softlayer/network/subnet/registration/event/type'
          attr_accessor :create_date
          attr_accessor :id
          attr_accessor :message
          attr_accessor :modify_date
          attr_accessor :registration_id
          attr_accessor :type_id
          attr_accessor :registration
          attr_accessor :type

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :create_date, type: DateTime
            property :id, type: Integer
            property :message, type: String
            property :modify_date, type: DateTime
            property :registration_id, type: Integer
            property :type_id, type: Integer
          end
        end
      end
    end
  end
end
