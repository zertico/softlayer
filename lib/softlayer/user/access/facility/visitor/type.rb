module Softlayer
  module User
    module Access
      module Facility
        class Visitor
          class Type < Softlayer::Model
            attr_accessor :id
            attr_accessor :key_name
            attr_accessor :name

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
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
