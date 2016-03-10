module Softlayer
  module User
    class Employee
      class Department < Softlayer::Model
        attr_accessor :name

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :name, type: String
        end
      end
    end
  end
end
