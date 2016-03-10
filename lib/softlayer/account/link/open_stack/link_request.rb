module Softlayer
  class Account
    class Link
      class OpenStack
        class LinkRequest < Softlayer::Model
          attr_accessor :desired_password
          attr_accessor :desired_project_name
          attr_accessor :desired_username

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :desired_password, type: String
            property :desired_project_name, type: String
            property :desired_username, type: String
          end
        end
      end
    end
  end
end
