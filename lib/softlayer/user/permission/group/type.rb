module Softlayer
  module User
    module Permission
      class Group
        class Type < Softlayer::Entity
          SERVICE = 'SoftLayer_User_Permission_Group_Type'
          attr_accessor :create_date
          attr_accessor :id
          attr_accessor :key_name
          attr_accessor :modify_date
          attr_accessor :name
          attr_accessor :group_count
          attr_accessor :groups

          def get_groups
            request(:get_groups, Array[Softlayer::User::Permission::Group])
          end

          def get_object
            request(:get_object, Softlayer::User::Permission::Group::Type)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :create_date, type: DateTime
            property :id, type: Integer
            property :key_name, type: String
            property :modify_date, type: DateTime
            property :name, type: String
            property :group_count, type: BigDecimal
          end
        end
      end
    end
  end
end
