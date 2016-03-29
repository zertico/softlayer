module Softlayer
  module Catalyst
    class Enrollment
      class Request
        module Container
          class AnswerOption < Softlayer::Entity
            attr_accessor :answer
            attr_accessor :index

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :answer, type: String
              property :index, type: Integer
            end
          end
        end
      end
    end
  end
end
