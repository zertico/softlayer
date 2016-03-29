module Softlayer
  module Container
    module Network
      module Bandwidth
        module Version1
          class Usage < Softlayer::Entity
            attr_accessor :incoming_amount
            attr_accessor :outgoing_amount
            attr_accessor :recorded_date

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :incoming_amount, type: Float
              property :outgoing_amount, type: Float
              property :recorded_date, type: DateTime
            end
          end
        end
      end
    end
  end
end
