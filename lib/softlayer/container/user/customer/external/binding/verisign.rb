module Softlayer
  module Container
    module User
      module Customer
        module External
          class Binding
            class Verisign < Softlayer::Container::User::Customer::External::Binding
              attr_accessor :second_security_code
              attr_accessor :security_code

              class Representer < Softlayer::Container::User::Customer::External::Binding::Representer
                include Representable::Hash
                include Representable::Coercion
                property :second_security_code, type: String
                property :security_code, type: String
              end
            end
          end
        end
      end
    end
  end
end
