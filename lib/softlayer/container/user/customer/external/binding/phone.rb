module Softlayer
  module Container
    module User
      module Customer
        module External
          class Binding
            class Phone < Softlayer::Container::User::Customer::External::Binding
              autoload :Mode, 'softlayer/container/user/customer/external/binding/phone/mode'

              class Representer < Softlayer::Container::User::Customer::External::Binding::Representer
                include Representable::Hash
                include Representable::Coercion
              end
            end
          end
        end
      end
    end
  end
end
