module Softlayer
  module Virtual
    class Guest
      module Block
        class Device
          class Status < Softlayer::Model
            attr_accessor :key_name
            attr_accessor :name

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :key_name, type: String
              property :name, type: String
            end
          end
        end
      end
    end
  end
end
