module Softlayer
  module User
    class Customer
      module Security
        class Answer < Softlayer::Entity
          SERVICE = 'SoftLayer_User_Customer_Security_Answer'
          attr_accessor :answer
          attr_accessor :id
          attr_accessor :question_id
          attr_accessor :user_id
          attr_accessor :question
          attr_accessor :user

          def get_object
            request(:get_object, Softlayer::User::Customer::Security::Answer)
          end

          def get_question
            request(:get_question, Softlayer::User::Security::Question)
          end

          def get_user
            request(:get_user, Softlayer::User::Customer)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :answer, type: String
            property :id, type: Integer
            property :question_id, type: Integer
            property :user_id, type: Integer
          end
        end
      end
    end
  end
end
