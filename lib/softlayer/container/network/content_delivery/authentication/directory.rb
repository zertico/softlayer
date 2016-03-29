module Softlayer
  module Container
    module Network
      module ContentDelivery
        module Authentication
          class Directory < Softlayer::Entity
            attr_accessor :create_date
            attr_accessor :name
            attr_accessor :type

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :create_date, type: DateTime
              property :name, type: String
              property :type, type: String
            end
          end
        end
      end
    end
  end
end
