module Softlayer
  module Container
    module User
      module Customer
        class PasswordSet < Softlayer::Entity
          attr_accessor :answered_security_question_id
          attr_accessor :authentication_methods
          attr_accessor :key
          attr_accessor :password
          attr_accessor :security_answer
          attr_accessor :security_questions
          attr_accessor :user_id

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :answered_security_question_id, type: Integer
            property :key, type: String
            property :password, type: String
            property :security_answer, type: String
            property :user_id, type: Integer
          end
        end
      end
    end
  end
end
