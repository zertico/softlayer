module Softlayer
  class Account
    module Regional
      module Registry
        class Detail < Softlayer::Entity
          SERVICE = 'SoftLayer_Account_Regional_Registry_Detail'
          autoload :Property, 'softlayer/account/regional/registry/detail/property'
          autoload :Type, 'softlayer/account/regional/registry/detail/type'
          autoload :Version4, 'softlayer/account/regional/registry/detail/version4'
          attr_accessor :account_id
          attr_accessor :create_date
          attr_accessor :detail_type_id
          attr_accessor :id
          attr_accessor :modify_date
          attr_accessor :regional_internet_registry_handle_id
          attr_accessor :detail_count
          attr_accessor :property_count
          attr_accessor :account
          attr_accessor :detail_type
          attr_accessor :details
          attr_accessor :properties
          attr_accessor :regional_internet_registry_handle

          def self.create_object(template_object = nil)
            message = {template_object: template_object}
            request(:create_object, Softlayer::Account::Regional::Registry::Detail, message)
          end

          def delete_object
            request(:delete_object, Boolean)
          end

          def edit_object(template_object = nil)
            message = {template_object: template_object}
            request(:edit_object, Boolean, message)
          end

          def get_account
            request(:get_account, Softlayer::Account)
          end

          def get_detail_type
            request(:get_detail_type, Softlayer::Account::Regional::Registry::Detail::Type)
          end

          def get_details
            request(:get_details, Array[Softlayer::Network::Subnet::Registration::Details])
          end

          def get_object
            request(:get_object, Softlayer::Account::Regional::Registry::Detail)
          end

          def get_properties
            request(:get_properties, Array[Softlayer::Account::Regional::Registry::Detail::Property])
          end

          def get_regional_internet_registry_handle
            request(:get_regional_internet_registry_handle, Softlayer::Account::Rwhois::Handle)
          end

          def update_referenced_registrations
            request(:update_referenced_registrations, Softlayer::Container::Network::Subnet::Registration::TransactionDetails)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :account_id, type: Integer
            property :create_date, type: DateTime
            property :detail_type_id, type: Integer
            property :id, type: Integer
            property :modify_date, type: DateTime
            property :regional_internet_registry_handle_id, type: Integer
            property :detail_count, type: BigDecimal
            property :property_count, type: BigDecimal
          end
        end
      end
    end
  end
end
