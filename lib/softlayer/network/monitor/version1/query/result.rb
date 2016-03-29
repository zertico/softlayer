module Softlayer
  class Network
    class Monitor
      module Version1
        module Query
          class Result < Softlayer::Entity
            attr_accessor :finish_time
            attr_accessor :response_status
            attr_accessor :response_time
            attr_accessor :query_host

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :finish_time, type: DateTime
              property :response_status, type: Integer
              property :response_time, type: Float
            end
          end
        end
      end
    end
  end
end
