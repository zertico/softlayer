module Softlayer
  class Network
    class Storage
      class Credential < Softlayer::Entity
        autoload :Type, 'softlayer/network/storage/credential/type'
        attr_accessor :account_id
        attr_accessor :create_date
        attr_accessor :id
        attr_accessor :modify_date
        attr_accessor :nas_credential_type_id
        attr_accessor :password
        attr_accessor :username
        attr_accessor :volume_count
        attr_accessor :account
        attr_accessor :network_storage_allowed_hosts
        attr_accessor :type
        attr_accessor :volumes

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :account_id, type: String
          property :create_date, type: DateTime
          property :id, type: Integer
          property :modify_date, type: DateTime
          property :nas_credential_type_id, type: Integer
          property :password, type: String
          property :username, type: String
          property :volume_count, type: BigDecimal
        end
      end
    end
  end
end
