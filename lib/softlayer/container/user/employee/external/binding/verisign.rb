module Softlayer
  module Container
    module User
      module Employee
        module External
          module Binding
            class Verisign < Softlayer::Entity

              class Representer < Softlayer::Entity::Representer
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
