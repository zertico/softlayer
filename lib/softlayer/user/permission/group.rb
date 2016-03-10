module Softlayer
  module User
    module Permission
      class Group < Softlayer::Model
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

        def add_action(action = nil)
          message = {action: action}
          request(:add_action, nil, message)
        end

        def add_bulk_actions(actions = nil)
          message = {actions: actions}
          request(:add_bulk_actions, nil, message)
        end

        def add_bulk_resource_objects(resource_objects = nil, resource_type_key_name = nil)
          message = {resource_objects: resource_objects, resource_type_key_name: resource_type_key_name}
          request(:add_bulk_resource_objects, Boolean, message)
        end

        def add_resource_object(resource_object = nil, resource_type_key_name = nil)
          message = {resource_object: resource_object, resource_type_key_name: resource_type_key_name}
          request(:add_resource_object, Boolean, message)
        end

        def self.create_object(template_object = nil)
          message = {template_object: template_object}
          request(:create_object, Softlayer::User::Permission::Group, message)
        end

        def delete_object
          request(:delete_object, Boolean)
        end

        def edit_object(template_object = nil)
          message = {template_object: template_object}
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

        def link_role(role = nil)
          message = {role: role}
          request(:link_role, nil, message)
        end

        def remove_action(action = nil)
          message = {action: action}
          request(:remove_action, nil, message)
        end

        def remove_bulk_actions(actions = nil)
          message = {actions: actions}
          request(:remove_bulk_actions, nil, message)
        end

        def remove_bulk_resource_objects(resource_objects = nil, resource_type_key_name = nil)
          message = {resource_objects: resource_objects, resource_type_key_name: resource_type_key_name}
          request(:remove_bulk_resource_objects, Boolean, message)
        end

        def remove_resource_object(resource_object = nil, resource_type_key_name = nil)
          message = {resource_object: resource_object, resource_type_key_name: resource_type_key_name}
          request(:remove_resource_object, Boolean, message)
        end

        def unlink_role(role = nil)
          message = {role: role}
          request(:unlink_role, nil, message)
        end

        class Representer < Representable::Decorator
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
