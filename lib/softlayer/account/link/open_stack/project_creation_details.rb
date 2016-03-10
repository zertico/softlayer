module Softlayer
  class Account
    class Link
      class OpenStack
        class ProjectCreationDetails < Softlayer::Model
          attr_accessor :domain_id
          attr_accessor :project_id
          attr_accessor :project_name
          attr_accessor :user_id
          attr_accessor :user_name

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :domain_id, type: String
            property :project_id, type: String
            property :project_name, type: String
            property :user_id, type: String
            property :user_name, type: String
          end
        end
      end
    end
  end
end
