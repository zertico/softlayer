module Softlayer
  class Brand < Softlayer::Entity
    SERVICE = 'SoftLayer_Brand'
    autoload :Attribute, 'softlayer/brand/attribute'
    autoload :Contact, 'softlayer/brand/contact'
    autoload :Payment, 'softlayer/brand/payment'
    autoload :Restriction, 'softlayer/brand/restriction'
    attr_accessor :catalog_id
    attr_accessor :id
    attr_accessor :key_name
    attr_accessor :long_name
    attr_accessor :name
    attr_accessor :all_owned_account_count
    attr_accessor :contact_count
    attr_accessor :customer_country_location_restriction_count
    attr_accessor :hardware_count
    attr_accessor :open_ticket_count
    attr_accessor :owned_account_count
    attr_accessor :ticket_count
    attr_accessor :ticket_group_count
    attr_accessor :user_count
    attr_accessor :virtual_guest_count
    attr_accessor :account
    attr_accessor :all_owned_accounts
    attr_accessor :allow_account_creation_flag
    attr_accessor :catalog
    attr_accessor :contacts
    attr_accessor :customer_country_location_restrictions
    attr_accessor :distributor
    attr_accessor :distributor_child_flag
    attr_accessor :distributor_flag
    attr_accessor :hardware
    attr_accessor :has_agent_support_flag
    attr_accessor :open_tickets
    attr_accessor :owned_accounts
    attr_accessor :ticket_groups
    attr_accessor :tickets
    attr_accessor :users
    attr_accessor :virtual_guests

    # account
    # bypass_duplicate_account_check
    def self.create_customer_account(message)
      request(:create_customer_account, Softlayer::Account, message)
    end

    # template_object
    def self.create_object(message)
      request(:create_object, Softlayer::Brand, message)
    end

    def get_account
      request(:get_account, Softlayer::Account)
    end

    def get_all_owned_accounts
      request(:get_all_owned_accounts, Array[Softlayer::Account])
    end

    # account
    def get_all_ticket_subjects(message)
      request(:get_all_ticket_subjects, Array[Softlayer::Ticket::Subject], message)
    end

    def get_allow_account_creation_flag
      request(:get_allow_account_creation_flag, Boolean)
    end

    def get_catalog
      request(:get_catalog, Softlayer::Product::Catalog)
    end

    def get_contact_information
      request(:get_contact_information, Array[Softlayer::Brand::Contact])
    end

    def get_contacts
      request(:get_contacts, Array[Softlayer::Brand::Contact])
    end

    def get_customer_country_location_restrictions
      request(:get_customer_country_location_restrictions, Array[Softlayer::Brand::Restriction::Location::CustomerCountry])
    end

    def get_distributor
      request(:get_distributor, Softlayer::Brand)
    end

    def get_distributor_child_flag
      request(:get_distributor_child_flag, Boolean)
    end

    def get_distributor_flag
      request(:get_distributor_flag, String)
    end

    def get_hardware
      request(:get_hardware, Array[Softlayer::Hardware])
    end

    def get_has_agent_support_flag
      request(:get_has_agent_support_flag, Boolean)
    end

    def get_merchant_name
      request(:get_merchant_name, String)
    end

    def get_object
      request(:get_object, Softlayer::Brand)
    end

    def get_open_tickets
      request(:get_open_tickets, Array[Softlayer::Ticket])
    end

    def get_owned_accounts
      request(:get_owned_accounts, Array[Softlayer::Account])
    end

    def get_ticket_groups
      request(:get_ticket_groups, Array[Softlayer::Ticket::Group])
    end

    def get_tickets
      request(:get_tickets, Array[Softlayer::Ticket])
    end

    # user_id
    def get_token(message)
      request(:get_token, String, message)
    end

    def get_users
      request(:get_users, Array[Softlayer::User::Customer])
    end

    def get_virtual_guests
      request(:get_virtual_guests, Array[Softlayer::Virtual::Guest])
    end

    class Representer < Softlayer::Entity::Representer
      include Representable::Hash
      include Representable::Coercion
      property :catalog_id, type: Integer
      property :id, type: Integer
      property :key_name, type: String
      property :long_name, type: String
      property :name, type: String
      property :all_owned_account_count, type: BigDecimal
      property :contact_count, type: BigDecimal
      property :customer_country_location_restriction_count, type: BigDecimal
      property :hardware_count, type: BigDecimal
      property :open_ticket_count, type: BigDecimal
      property :owned_account_count, type: BigDecimal
      property :ticket_count, type: BigDecimal
      property :ticket_group_count, type: BigDecimal
      property :user_count, type: BigDecimal
      property :virtual_guest_count, type: BigDecimal
      property :allow_account_creation_flag, type: Boolean
      property :distributor_child_flag, type: Boolean
      property :distributor_flag, type: String
      property :has_agent_support_flag, type: Boolean
    end
  end
end
