module Softlayer
  module Container
    module User
      module Employee
        module External
          module Binding
            class Verisign < Softlayer::Model

              class Representer < Representable::Decorator
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
