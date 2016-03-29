module Softlayer
  class Network
    class Storage
      class Schedule
        class Property < Softlayer::Entity
          autoload :Type, 'softlayer/network/storage/schedule/property/type'
          attr_accessor :create_date
          attr_accessor :id
          attr_accessor :modify_date
          attr_accessor :type_id
          attr_accessor :value
          attr_accessor :schedule
          attr_accessor :type

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :create_date, type: DateTime
            property :id, type: Integer
            property :modify_date, type: DateTime
            property :type_id, type: Integer
            property :value, type: String
          end
        end
      end
    end
  end
end
