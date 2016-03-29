module Softlayer
  module Resource
    class Group
      class Member
        module Role
          class Link < Softlayer::Entity
            attr_accessor :group_member_id
            attr_accessor :group_template_role_id

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :group_member_id, type: Integer
              property :group_template_role_id, type: Integer
            end
          end
        end
      end
    end
  end
end
