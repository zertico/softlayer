module Softlayer
  class Network
    class Subnet
      module Rwhois
        class Data < Softlayer::Entity
          SERVICE = 'SoftLayer_Network_Subnet_Rwhois_Data'
          attr_accessor :abuse_email
          attr_accessor :account_id
          attr_accessor :address1
          attr_accessor :address2
          attr_accessor :city
          attr_accessor :company_name
          attr_accessor :country
          attr_accessor :create_date
          attr_accessor :first_name
          attr_accessor :id
          attr_accessor :last_name
          attr_accessor :modify_date
          attr_accessor :postal_code
          attr_accessor :private_residence_flag
          attr_accessor :state
          attr_accessor :account

          # template_object
          def edit_object(message)
            request(:edit_object, Boolean, message)
          end

          def get_account
            request(:get_account, Softlayer::Account)
          end

          def get_object
            request(:get_object, Softlayer::Network::Subnet::Rwhois::Data)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :abuse_email, type: String
            property :account_id, type: Integer
            property :address1, type: String
            property :address2, type: String
            property :city, type: String
            property :company_name, type: String
            property :country, type: String
            property :create_date, type: DateTime
            property :first_name, type: String
            property :id, type: Integer
            property :last_name, type: String
            property :modify_date, type: DateTime
            property :postal_code, type: String
            property :private_residence_flag, type: Boolean
            property :state, type: String
          end
        end
      end
    end
  end
end
