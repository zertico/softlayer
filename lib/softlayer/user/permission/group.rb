module Softlayer
  module User
    module Permission
      class Group < Softlayer::Entity
        SERVICE = 'SoftLayer_User_Permission_Group'
        autoload :Type, 'softlayer/user/permission/group/type'
        attr_accessor :account_id
        attr_accessor :create_date
        attr_accessor :description
        attr_accessor :expiration_date
        attr_accessor :id
        attr_accessor :modify_date
        attr_accessor :name
        attr_accessor :type_id
        attr_accessor :action_count
        attr_accessor :role_count
        attr_accessor :account
        attr_accessor :actions
        attr_accessor :roles
        attr_accessor :type

        # action
        def add_action(message)
          request(:add_action, nil, message)
        end

        # actions
        def add_bulk_actions(message)
          request(:add_bulk_actions, nil, message)
        end

        # resource_objects
        # resource_type_key_name
        def add_bulk_resource_objects(message)
          request(:add_bulk_resource_objects, Boolean, message)
        end

        # resource_object
        # resource_type_key_name
        def add_resource_object(message)
          request(:add_resource_object, Boolean, message)
        end

        # template_object
        def self.create_object(message)
          request(:create_object, Softlayer::User::Permission::Group, message)
        end

        def delete_object
          request(:delete_object, Boolean)
        end

        # template_object
        def edit_object(message)
          request(:edit_object, Softlayer::User::Permission::Group, message)
        end

        def get_account
          request(:get_account, Softlayer::Account)
        end

        def get_actions
          request(:get_actions, Array[Softlayer::User::Permission::Action])
        end

        def get_object
          request(:get_object, Softlayer::User::Permission::Group)
        end

        def get_roles
          request(:get_roles, Array[Softlayer::User::Permission::Role])
        end

        def get_type
          request(:get_type, Softlayer::User::Permission::Group::Type)
        end

        # role
        def link_role(message)
          request(:link_role, nil, message)
        end

        # action
        def remove_action(message)
          request(:remove_action, nil, message)
        end

        # actions
        def remove_bulk_actions(message)
          request(:remove_bulk_actions, nil, message)
        end

        # resource_objects
        # resource_type_key_name
        def remove_bulk_resource_objects(message)
          request(:remove_bulk_resource_objects, Boolean, message)
        end

        # resource_object
        # resource_type_key_name
        def remove_resource_object(message)
          request(:remove_resource_object, Boolean, message)
        end

        # role
        def unlink_role(message)
          request(:unlink_role, nil, message)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :account_id, type: Integer
          property :create_date, type: DateTime
          property :description, type: String
          property :expiration_date, type: DateTime
          property :id, type: Integer
          property :modify_date, type: DateTime
          property :name, type: String
          property :type_id, type: Integer
          property :action_count, type: BigDecimal
          property :role_count, type: BigDecimal
        end
      end
    end
  end
end
