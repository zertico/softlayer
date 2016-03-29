module Softlayer
  module Container
    module User
      module Customer
        module External
          class Binding < Softlayer::Entity
            autoload :Phone, 'softlayer/container/user/customer/external/binding/phone'
            autoload :Totp, 'softlayer/container/user/customer/external/binding/totp'
            autoload :Vendor, 'softlayer/container/user/customer/external/binding/vendor'
            autoload :Verisign, 'softlayer/container/user/customer/external/binding/verisign'
            attr_accessor :authentication_token
            attr_accessor :password
            attr_accessor :security_question_answer
            attr_accessor :security_question_id
            attr_accessor :username
            attr_accessor :vendor

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :authentication_token, type: String
              property :password, type: String
              property :security_question_answer, type: String
              property :security_question_id, type: Integer
              property :username, type: String
              property :vendor, type: String
            end
          end
        end
      end
    end
  end
end
