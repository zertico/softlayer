module Softlayer
  class Network
    class Monitor
      module Version1
        module Query
          class Type < Softlayer::Model
            attr_accessor :argument_description
            attr_accessor :description
            attr_accessor :id
            attr_accessor :monitor_level
            attr_accessor :name

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :argument_description, type: String
              property :description, type: String
              property :id, type: Integer
              property :monitor_level, type: Integer
              property :name, type: String
            end
          end
        end
      end
    end
  end
end
