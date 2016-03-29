module Softlayer
  module Software
    class Component
      class Password < Softlayer::Entity
        SERVICE = 'SoftLayer_Software_Component_Password'
        autoload :History, 'softlayer/software/component/password/history'
        attr_accessor :create_date
        attr_accessor :id
        attr_accessor :modify_date
        attr_accessor :notes
        attr_accessor :password
        attr_accessor :port
        attr_accessor :software_id
        attr_accessor :username
        attr_accessor :ssh_key_count
        attr_accessor :software
        attr_accessor :ssh_keys

        def self.create_object(template_object = nil)
          message = {template_object: template_object}
          request(:create_object, Softlayer::Software::Component::Password, message)
        end

        def self.create_objects(template_objects = nil)
          message = {template_objects: template_objects}
          request(:create_objects, Boolean, message)
        end

        def delete_object
          request(:delete_object, Boolean)
        end

        def self.delete_objects(template_objects = nil)
          message = {template_objects: template_objects}
          request(:delete_objects, Boolean, message)
        end

        def edit_object(template_object = nil)
          message = {template_object: template_object}
          request(:edit_object, Boolean, message)
        end

        def self.edit_objects(template_objects = nil)
          message = {template_objects: template_objects}
          request(:edit_objects, Boolean, message)
        end

        def get_object
          request(:get_object, Softlayer::Software::Component::Password)
        end

        def get_software
          request(:get_software, Softlayer::Software::Component)
        end

        def get_ssh_keys
          request(:get_ssh_keys, Array[Softlayer::Security::Ssh::Key])
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :id, type: Integer
          property :modify_date, type: DateTime
          property :notes, type: String
          property :password, type: String
          property :port, type: Integer
          property :software_id, type: Integer
          property :username, type: String
          property :ssh_key_count, type: BigDecimal
        end
      end
    end
  end
end
