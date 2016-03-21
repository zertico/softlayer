module Softlayer
  module Container
    module Dns
      module Domain
        module Registration
          class ExtendedAttribute
            class Option
              class Require < Softlayer::Model
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
      end
    end
  end
end
