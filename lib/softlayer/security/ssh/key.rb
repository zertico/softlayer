module Softlayer
  module Security
    module Ssh
      class Key < Softlayer::Entity
        SERVICE = 'SoftLayer_Security_Ssh_Key'
        attr_accessor :create_date
        attr_accessor :fingerprint
        attr_accessor :id
        attr_accessor :key
        attr_accessor :label
        attr_accessor :modify_date
        attr_accessor :notes
        attr_accessor :block_device_template_group_count
        attr_accessor :software_password_count
        attr_accessor :account
        attr_accessor :block_device_template_groups
        attr_accessor :software_passwords

        # template_object
        def self.create_object(message)
          request(:create_object, Softlayer::Security::Ssh::Key, message)
        end

        def delete_object
          request(:delete_object, Boolean)
        end

        # template_object
        def edit_object(message)
          request(:edit_object, Boolean, message)
        end

        def get_account
          request(:get_account, Softlayer::Account)
        end

        def get_block_device_template_groups
          request(:get_block_device_template_groups, Array[Softlayer::Virtual::Guest::Block::Device::Template::Group])
        end

        def get_object
          request(:get_object, Softlayer::Security::Ssh::Key)
        end

        def get_software_passwords
          request(:get_software_passwords, Array[Softlayer::Software::Component::Password])
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :fingerprint, type: String
          property :id, type: Integer
          property :key, type: String
          property :label, type: String
          property :modify_date, type: DateTime
          property :notes, type: String
          property :block_device_template_group_count, type: BigDecimal
          property :software_password_count, type: BigDecimal
        end
      end
    end
  end
end
