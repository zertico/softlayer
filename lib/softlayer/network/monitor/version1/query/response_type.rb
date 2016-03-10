module Softlayer
  class Network
    class Monitor
      module Version1
        module Query
          class ResponseType < Softlayer::Model
            attr_accessor :action_description
            attr_accessor :id
            attr_accessor :level

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :action_description, type: String
              property :id, type: Integer
              property :level, type: Integer
            end
          end
        end
      end
    end
  end
end
