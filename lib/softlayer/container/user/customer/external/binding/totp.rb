module Softlayer
  module Container
    module User
      module Customer
        module External
          class Binding
            class Totp < Softlayer::Container::User::Customer::External::Binding
              attr_accessor :security_code

              class Representer < Softlayer::Container::User::Customer::External::Binding::Representer
                include Representable::Hash
                include Representable::Coercion
                property :security_code, type: String
              end
            end
          end
        end
      end
    end
  end
end
