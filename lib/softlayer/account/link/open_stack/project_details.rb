module Softlayer
  class Account
    class Link
      class OpenStack
        class ProjectDetails < Softlayer::Entity
          attr_accessor :project_id
          attr_accessor :project_name

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :project_id, type: String
            property :project_name, type: String
          end
        end
      end
    end
  end
end
