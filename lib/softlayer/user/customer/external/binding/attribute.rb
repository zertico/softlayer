module Softlayer
  module User
    class Customer
      module External
        class Binding
          class Attribute < Softlayer::User::External::Binding::Attribute

            class Representer < Softlayer::User::External::Binding::Attribute::Representer
              include Representable::Hash
              include Representable::Coercion
            end
          end
        end
      end
    end
  end
end
