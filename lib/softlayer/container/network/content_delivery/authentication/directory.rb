module Softlayer
  module Container
    module Network
      module ContentDelivery
        module Authentication
          class Directory < Softlayer::Model
            attr_accessor :create_date
            attr_accessor :name
            attr_accessor :type

            class Representer < Representable::Decorator
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
