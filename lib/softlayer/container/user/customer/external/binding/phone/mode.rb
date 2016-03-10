module Softlayer
  module Container
    module User
      module Customer
        module External
          class Binding
            class Phone
              class Mode < Softlayer::Model
                attr_accessor :mode
                attr_accessor :pin
                attr_accessor :pin_mode

                class Representer < Representable::Decorator
                  include Representable::Hash
                  include Representable::Coercion
                  property :mode, type: String
                  property :pin, type: String
                  property :pin_mode, type: String
                end
              end
            end
          end
        end
      end
    end
  end
end
