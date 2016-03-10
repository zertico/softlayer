module Softlayer
  module Catalyst
    class Enrollment
      class Request
        module Container
          class AnswerOption < Softlayer::Model
            attr_accessor :answer
            attr_accessor :index

            class Representer < Representable::Decorator
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
