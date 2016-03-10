module Softlayer
  module User
    class Customer
      module External
        class Binding
          class Type < Softlayer::User::External::Binding::Type

            class Representer < Softlayer::User::External::Binding::Type::Representer
              include Representable::Hash
              include Representable::Coercion
            end
          end
        end
      end
    end
  end
end
