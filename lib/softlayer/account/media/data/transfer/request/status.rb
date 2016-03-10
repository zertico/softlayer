module Softlayer
  class Account
    class Media
      module Data
        module Transfer
          class Request
            class Status < Softlayer::Model
              attr_accessor :description
              attr_accessor :id
              attr_accessor :key_name
              attr_accessor :name

              class Representer < Representable::Decorator
                include Representable::Hash
                include Representable::Coercion
                property :description, type: String
                property :id, type: Integer
                property :key_name, type: String
                property :name, type: String
              end
            end
          end
        end
      end
    end
  end
end
