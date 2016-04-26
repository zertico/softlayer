module Softlayer
  module User
    class Customer < Softlayer::User::Interface
      SERVICE = 'SoftLayer_User_Customer'
      autoload :AdditionalEmail, 'softlayer/user/customer/additional_email'
      autoload :ApiAuthentication, 'softlayer/user/customer/api_authentication'
      autoload :Link, 'softlayer/user/customer/link'
      autoload :MobileDevice, 'softlayer/user/customer/mobile_device'
      autoload :Prospect, 'softlayer/user/customer/prospect'
      autoload :Status, 'softlayer/user/customer/status'
      autoload :Access, 'softlayer/user/customer/access'
      autoload :CustomerPermission, 'softlayer/user/customer/customer_permission'
      autoload :External, 'softlayer/user/customer/external'
      autoload :Notification, 'softlayer/user/customer/notification'
      autoload :Security, 'softlayer/user/customer/security'
      attr_accessor :account_id
      attr_accessor :address1
      attr_accessor :address2
      attr_accessor :aim
      attr_accessor :alternate_phone
      attr_accessor :authentication_token
      attr_accessor :city
      attr_accessor :company_name
      attr_accessor :country
      attr_accessor :create_date
      attr_accessor :daylight_savings_time_flag
      attr_accessor :deny_all_resource_access_on_create_flag
      attr_accessor :display_name
      attr_accessor :email
      attr_accessor :first_name
      attr_accessor :forum_password_hash
      attr_accessor :icq
      attr_accessor :id
      attr_accessor :ip_address_restriction
      attr_accessor :last_name
      attr_accessor :locale_id
      attr_accessor :managed_by_federation_flag
      attr_accessor :managed_by_oidc_flag
      attr_accessor :modify_date
      attr_accessor :msn
      attr_accessor :name_id
      attr_accessor :office_phone
      attr_accessor :parent_id
      attr_accessor :password_expire_date
      attr_accessor :permission_system_version
      attr_accessor :postal_code
      attr_accessor :pptp_vpn_allowed_flag
      attr_accessor :saved_id
      attr_accessor :secondary_login_management_flag
      attr_accessor :secondary_login_required_flag
      attr_accessor :secondary_password_modify_date
      attr_accessor :secondary_password_timeout_days
      attr_accessor :sms
      attr_accessor :ssl_vpn_allowed_flag
      attr_accessor :state
      attr_accessor :status_date
      attr_accessor :timezone_id
      attr_accessor :user_status_id
      attr_accessor :username
      attr_accessor :vpn_manual_config
      attr_accessor :yahoo
      attr_accessor :action_count
      attr_accessor :additional_email_count
      attr_accessor :api_authentication_key_count
      attr_accessor :cdn_account_count
      attr_accessor :child_user_count
      attr_accessor :closed_ticket_count
      attr_accessor :external_binding_count
      attr_accessor :hardware_count
      attr_accessor :hardware_notification_count
      attr_accessor :layout_profile_count
      attr_accessor :login_attempt_count
      attr_accessor :mobile_device_count
      attr_accessor :notification_subscriber_count
      attr_accessor :open_ticket_count
      attr_accessor :override_count
      attr_accessor :permission_count
      attr_accessor :preference_count
      attr_accessor :role_count
      attr_accessor :security_answer_count
      attr_accessor :subscriber_count
      attr_accessor :successful_login_count
      attr_accessor :survey_count
      attr_accessor :ticket_count
      attr_accessor :unsuccessful_login_count
      attr_accessor :user_link_count
      attr_accessor :virtual_guest_count
      attr_accessor :account
      attr_accessor :actions
      attr_accessor :additional_emails
      attr_accessor :api_authentication_keys
      attr_accessor :cdn_accounts
      attr_accessor :child_users
      attr_accessor :closed_tickets
      attr_accessor :external_bindings
      attr_accessor :hardware
      attr_accessor :hardware_notifications
      attr_accessor :has_acknowledged_support_policy_flag
      attr_accessor :has_full_hardware_access_flag
      attr_accessor :has_full_virtual_guest_access_flag
      attr_accessor :layout_profiles
      attr_accessor :locale
      attr_accessor :login_attempts
      attr_accessor :mobile_devices
      attr_accessor :notification_subscribers
      attr_accessor :open_tickets
      attr_accessor :overrides
      attr_accessor :parent
      attr_accessor :permissions
      attr_accessor :preferences
      attr_accessor :roles
      attr_accessor :salesforce_user_link
      attr_accessor :security_answers
      attr_accessor :subscribers
      attr_accessor :successful_logins
      attr_accessor :support_policy_acknowledgement_required_flag
      attr_accessor :survey_required_flag
      attr_accessor :surveys
      attr_accessor :tickets
      attr_accessor :timezone
      attr_accessor :unsuccessful_logins
      attr_accessor :user_links
      attr_accessor :user_status
      attr_accessor :virtual_guests

      def acknowledge_support_policy
        request(:acknowledge_support_policy, nil)
      end

      def add_api_authentication_key
        request(:add_api_authentication_key, String)
      end

      # hardware_ids
      def add_bulk_hardware_access(message)
        request(:add_bulk_hardware_access, Boolean, message)
      end

      # permissions
      def add_bulk_portal_permission(message)
        request(:add_bulk_portal_permission, Boolean, message)
      end

      # roles
      def add_bulk_roles(message)
        request(:add_bulk_roles, nil, message)
      end

      # virtual_guest_ids
      def add_bulk_virtual_guest_access(message)
        request(:add_bulk_virtual_guest_access, Boolean, message)
      end

      # external_binding
      def add_external_binding(message)
        request(:add_external_binding, Softlayer::User::Customer::External::Binding, message)
      end

      # hardware_id
      def add_hardware_access(message)
        request(:add_hardware_access, Boolean, message)
      end

      # notification_key_name
      def add_notification_subscriber(message)
        request(:add_notification_subscriber, Boolean, message)
      end

      # permission
      def add_portal_permission(message)
        request(:add_portal_permission, Boolean, message)
      end

      # role
      def add_role(message)
        request(:add_role, nil, message)
      end

      # virtual_guest_id
      def add_virtual_guest_access(message)
        request(:add_virtual_guest_access, Boolean, message)
      end

      # preference_type_key_name
      # value
      def change_preference(message)
        request(:change_preference, Array[Softlayer::User::Preference], message)
      end

      # authentication_container
      def self.check_external_authentication_status(message)
        request(:check_external_authentication_status, Softlayer::Container::User::Customer::Portal::Token, message)
      end

      # key_name
      # resource_table_id
      def create_notification_subscriber(message)
        request(:create_notification_subscriber, Boolean, message)
      end

      # template_object
      # password
      # vpn_password
      def self.create_object(message)
        request(:create_object, Softlayer::User::Customer, message)
      end

      # notification_key_name
      # delivery_method_key_names
      def create_subscriber_delivery_methods(message)
        request(:create_subscriber_delivery_methods, Boolean, message)
      end

      # key_name
      # resource_table_id
      def deactivate_notification_subscriber(message)
        request(:deactivate_notification_subscriber, Boolean, message)
      end

      # template_object
      def edit_object(message)
        request(:edit_object, Boolean, message)
      end

      # template_objects
      def self.edit_objects(message)
        request(:edit_objects, Boolean, message)
      end

      # profile_name
      # container_keyname
      # preference_keyname
      def find_user_preference(message)
        request(:find_user_preference, Array[Softlayer::Layout::Profile], message)
      end

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def get_actions
        request(:get_actions, Array[Softlayer::User::Permission::Action])
      end

      def self.get_active_external_authentication_vendors
        request(:get_active_external_authentication_vendors, Array[Softlayer::Container::User::Customer::External::Binding::Vendor])
      end

      def get_additional_emails
        request(:get_additional_emails, Array[Softlayer::User::Customer::AdditionalEmail])
      end

      def get_allowed_hardware_ids
        request(:get_allowed_hardware_ids, Array[Integer])
      end

      def get_allowed_virtual_guest_ids
        request(:get_allowed_virtual_guest_ids, Array[Integer])
      end

      def get_api_authentication_keys
        request(:get_api_authentication_keys, Array[Softlayer::User::Customer::ApiAuthentication])
      end

      # token
      def get_authentication_token(message)
        request(:get_authentication_token, Softlayer::Container::User::Authentication::Token, message)
      end

      def get_cdn_accounts
        request(:get_cdn_accounts, Array[Softlayer::Network::ContentDelivery::Account])
      end

      def get_child_users
        request(:get_child_users, Array[Softlayer::User::Customer])
      end

      def get_closed_tickets
        request(:get_closed_tickets, Array[Softlayer::Ticket])
      end

      # key
      def self.get_default_security_questions(message)
        request(:get_default_security_questions, Array[Softlayer::User::Security::Question], message)
      end

      def get_external_bindings
        request(:get_external_bindings, Array[Softlayer::User::External::Binding])
      end

      def get_hardware
        request(:get_hardware, Array[Softlayer::Hardware])
      end

      def get_hardware_count
        request(:get_hardware_count, Integer)
      end

      def get_hardware_notifications
        request(:get_hardware_notifications, Array[Softlayer::User::Customer::Notification::Hardware])
      end

      def get_has_acknowledged_support_policy_flag
        request(:get_has_acknowledged_support_policy_flag, Boolean)
      end

      def get_has_full_hardware_access_flag
        request(:get_has_full_hardware_access_flag, Boolean)
      end

      def get_has_full_virtual_guest_access_flag
        request(:get_has_full_virtual_guest_access_flag, Boolean)
      end

      def get_impersonation_token
        request(:get_impersonation_token, String)
      end

      def get_layout_profiles
        request(:get_layout_profiles, Array[Softlayer::Layout::Profile])
      end

      def get_locale
        request(:get_locale, Softlayer::Locale)
      end

      def get_login_attempts
        request(:get_login_attempts, Array[Softlayer::User::Customer::Access::Authentication])
      end

      def get_mobile_devices
        request(:get_mobile_devices, Array[Softlayer::User::Customer::MobileDevice])
      end

      def get_notification_subscribers
        request(:get_notification_subscribers, Array[Softlayer::Notification::Subscriber])
      end

      def get_object
        request(:get_object, Softlayer::User::Customer)
      end

      def get_open_tickets
        request(:get_open_tickets, Array[Softlayer::Ticket])
      end

      def get_overrides
        request(:get_overrides, Array[Softlayer::Network::Service::Vpn::Overrides])
      end

      def get_parent
        request(:get_parent, Softlayer::User::Customer)
      end

      def get_permissions
        request(:get_permissions, Array[Softlayer::User::Customer::CustomerPermission::Permission])
      end

      # username
      # password
      # security_question_id
      # security_question_answer
      def self.get_portal_login_token(message)
        request(:get_portal_login_token, Softlayer::Container::User::Customer::Portal::Token, message)
      end

      # preference_type_key_name
      def get_preference(message)
        request(:get_preference, Softlayer::User::Preference, message)
      end

      def get_preference_types
        request(:get_preference_types, Array[Softlayer::User::Preference::Type])
      end

      def get_preferences
        request(:get_preferences, Array[Softlayer::User::Preference])
      end

      def get_roles
        request(:get_roles, Array[Softlayer::User::Permission::Role])
      end

      def get_salesforce_user_link
        request(:get_salesforce_user_link, Softlayer::User::Customer::Link)
      end

      def get_security_answers
        request(:get_security_answers, Array[Softlayer::User::Customer::Security::Answer])
      end

      def get_subscribers
        request(:get_subscribers, Array[Softlayer::Notification::User::Subscriber])
      end

      def get_successful_logins
        request(:get_successful_logins, Array[Softlayer::User::Customer::Access::Authentication])
      end

      def get_support_policy_acknowledgement_required_flag
        request(:get_support_policy_acknowledgement_required_flag, Integer)
      end

      def get_support_policy_document
        request(:get_support_policy_document, Softlayer::Base64Binary)
      end

      def get_support_policy_name
        request(:get_support_policy_name, String)
      end

      def get_supported_locales
        request(:get_supported_locales, Array[Softlayer::Locale])
      end

      def get_survey_required_flag
        request(:get_survey_required_flag, Boolean)
      end

      def get_surveys
        request(:get_surveys, Array[Softlayer::Survey])
      end

      def get_tickets
        request(:get_tickets, Array[Softlayer::Ticket])
      end

      def get_timezone
        request(:get_timezone, Softlayer::Locale::Timezone)
      end

      def get_unsuccessful_logins
        request(:get_unsuccessful_logins, Array[Softlayer::User::Customer::Access::Authentication])
      end

      # key
      def self.get_user_from_lost_password_request(message)
        request(:get_user_from_lost_password_request, Array[Softlayer::User::Security::Question], message)
      end

      def get_user_links
        request(:get_user_links, Array[Softlayer::User::Customer::Link])
      end

      # profile_name
      # container_keyname
      def get_user_preferences(message)
        request(:get_user_preferences, Array[Softlayer::Layout::Profile], message)
      end

      def get_user_status
        request(:get_user_status, Softlayer::User::Customer::Status)
      end

      def get_virtual_guest_count
        request(:get_virtual_guest_count, Integer)
      end

      def get_virtual_guests
        request(:get_virtual_guests, Array[Softlayer::Virtual::Guest])
      end

      def in_terminal_status
        request(:in_terminal_status, Boolean)
      end

      # authentication_container
      def self.initiate_external_authentication(message)
        request(:initiate_external_authentication, String, message)
      end

      def is_master_user
        request(:is_master_user, Boolean)
      end

      # password
      def is_valid_forum_password(message)
        request(:is_valid_forum_password, Boolean, message)
      end

      # password
      def is_valid_portal_password(message)
        request(:is_valid_portal_password, Boolean, message)
      end

      # username
      # email
      def self.lost_password(message)
        request(:lost_password, Boolean, message)
      end

      # authentication_container
      def self.perform_external_authentication(message)
        request(:perform_external_authentication, Softlayer::Container::User::Customer::Portal::Token, message)
      end

      def remove_all_hardware_access_for_this_user
        request(:remove_all_hardware_access_for_this_user, Boolean)
      end

      def remove_all_virtual_access_for_this_user
        request(:remove_all_virtual_access_for_this_user, Boolean)
      end

      # key_id
      def self.remove_api_authentication_key(message)
        request(:remove_api_authentication_key, Boolean, message)
      end

      # hardware_ids
      def remove_bulk_hardware_access(message)
        request(:remove_bulk_hardware_access, Boolean, message)
      end

      # permissions
      def remove_bulk_portal_permission(message)
        request(:remove_bulk_portal_permission, Boolean, message)
      end

      # roles
      def remove_bulk_roles(message)
        request(:remove_bulk_roles, nil, message)
      end

      # virtual_guest_ids
      def remove_bulk_virtual_guest_access(message)
        request(:remove_bulk_virtual_guest_access, Boolean, message)
      end

      # external_binding
      def remove_external_binding(message)
        request(:remove_external_binding, Boolean, message)
      end

      # hardware_id
      def remove_hardware_access(message)
        request(:remove_hardware_access, Boolean, message)
      end

      # permission
      def remove_portal_permission(message)
        request(:remove_portal_permission, Boolean, message)
      end

      # role
      def remove_role(message)
        request(:remove_role, nil, message)
      end

      # virtual_guest_id
      def remove_virtual_guest_access(message)
        request(:remove_virtual_guest_access, Boolean, message)
      end

      # username
      # password
      # new_password
      # security_question_id
      # security_question_answer
      def self.reset_expired_password(message)
        request(:reset_expired_password, Boolean, message)
      end

      # account_id
      # saml_response
      def self.saml_authenticate(message)
        request(:saml_authenticate, Softlayer::Container::User::Customer::Portal::Token, message)
      end

      # account_id
      def self.saml_begin_authentication(message)
        request(:saml_begin_authentication, String, message)
      end

      def saml_begin_logout
        request(:saml_begin_logout, String)
      end

      # saml_response
      def saml_logout(message)
        request(:saml_logout, nil, message)
      end

      # key
      # password
      # security_answers
      def self.set_password_from_lost_password_request(message)
        request(:set_password_from_lost_password_request, Boolean, message)
      end

      # password
      def update_forum_password(message)
        request(:update_forum_password, Boolean, message)
      end

      # notification_key_name
      # active
      def update_notification_subscriber(message)
        request(:update_notification_subscriber, Boolean, message)
      end

      # password
      def update_password(message)
        request(:update_password, Boolean, message)
      end

      # questions
      # answers
      def update_security_answers(message)
        request(:update_security_answers, Boolean, message)
      end

      # notification_key_name
      # delivery_method_key_names
      # active
      def update_subscriber_delivery_method(message)
        request(:update_subscriber_delivery_method, Boolean, message)
      end

      # password
      def update_vpn_password(message)
        request(:update_vpn_password, Boolean, message)
      end

      def update_vpn_user
        request(:update_vpn_user, Boolean)
      end

      # authentication_token
      def self.validate_authentication_token(message)
        request(:validate_authentication_token, Softlayer::Container::User::Customer::Portal::Token, message)
      end

      class Representer < Softlayer::User::Interface::Representer
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :address1, type: String
        property :address2, type: String
        property :aim, type: String
        property :alternate_phone, type: String
        property :city, type: String
        property :company_name, type: String
        property :country, type: String
        property :create_date, type: DateTime
        property :daylight_savings_time_flag, type: Boolean
        property :deny_all_resource_access_on_create_flag, type: Boolean
        property :display_name, type: String
        property :email, type: String
        property :first_name, type: String
        property :forum_password_hash, type: String
        property :icq, type: String
        property :id, type: Integer
        property :ip_address_restriction, type: String
        property :last_name, type: String
        property :locale_id, type: Integer
        property :managed_by_federation_flag, type: Boolean
        property :managed_by_oidc_flag, type: Boolean
        property :modify_date, type: DateTime
        property :msn, type: String
        property :name_id, type: String
        property :office_phone, type: String
        property :parent_id, type: Integer
        property :password_expire_date, type: DateTime
        property :permission_system_version, type: Integer
        property :postal_code, type: String
        property :pptp_vpn_allowed_flag, type: Boolean
        property :saved_id, type: String
        property :secondary_login_management_flag, type: Boolean
        property :secondary_login_required_flag, type: Boolean
        property :secondary_password_modify_date, type: DateTime
        property :secondary_password_timeout_days, type: Integer
        property :sms, type: String
        property :ssl_vpn_allowed_flag, type: Boolean
        property :state, type: String
        property :status_date, type: DateTime
        property :timezone_id, type: Integer
        property :user_status_id, type: Integer
        property :username, type: String
        property :vpn_manual_config, type: Boolean
        property :yahoo, type: String
        property :action_count, type: BigDecimal
        property :additional_email_count, type: BigDecimal
        property :api_authentication_key_count, type: BigDecimal
        property :cdn_account_count, type: BigDecimal
        property :child_user_count, type: BigDecimal
        property :closed_ticket_count, type: BigDecimal
        property :external_binding_count, type: BigDecimal
        property :hardware_count, type: BigDecimal
        property :hardware_notification_count, type: BigDecimal
        property :layout_profile_count, type: BigDecimal
        property :login_attempt_count, type: BigDecimal
        property :mobile_device_count, type: BigDecimal
        property :notification_subscriber_count, type: BigDecimal
        property :open_ticket_count, type: BigDecimal
        property :override_count, type: BigDecimal
        property :permission_count, type: BigDecimal
        property :preference_count, type: BigDecimal
        property :role_count, type: BigDecimal
        property :security_answer_count, type: BigDecimal
        property :subscriber_count, type: BigDecimal
        property :successful_login_count, type: BigDecimal
        property :survey_count, type: BigDecimal
        property :ticket_count, type: BigDecimal
        property :unsuccessful_login_count, type: BigDecimal
        property :user_link_count, type: BigDecimal
        property :virtual_guest_count, type: BigDecimal
        property :has_acknowledged_support_policy_flag, type: Boolean
        property :has_full_hardware_access_flag, type: Boolean
        property :has_full_virtual_guest_access_flag, type: Boolean
        property :support_policy_acknowledgement_required_flag, type: Integer
        property :survey_required_flag, type: Boolean
      end
    end
  end
end
