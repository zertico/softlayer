module Softlayer
  module User
    class Customer
      class OpenIdConnect < Softlayer::User::Customer
        SERVICE = 'SoftLayer_User_Customer_OpenIdConnect'

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
          request(:create_object, Softlayer::User::Customer::OpenIdConnect, message)
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

        # provider_type
        # redirection_url
        def self.generate_authorization_endpoint_url(message)
          request(:generate_authorization_endpoint_url, String, message)
        end

        # provider_type
        # response
        def self.get_access_token_from_open_id_connect_authorize_redirect(message)
          request(:get_access_token_from_open_id_connect_authorize_redirect, String, message)
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

        def get_default_account
          request(:get_default_account, Softlayer::Account)
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

        # provider_type
        def get_mapped_accounts(message)
          request(:get_mapped_accounts, Array[Softlayer::Account], message)
        end

        def get_mobile_devices
          request(:get_mobile_devices, Array[Softlayer::User::Customer::MobileDevice])
        end

        def get_notification_subscribers
          request(:get_notification_subscribers, Array[Softlayer::Notification::Subscriber])
        end

        def get_object
          request(:get_object, Softlayer::User::Customer::OpenIdConnect)
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

        # provider_type
        # access_token
        # account_id
        def self.get_portal_login_token_open_id_connect(message)
          request(:get_portal_login_token_open_id_connect, Softlayer::Container::User::Customer::Portal::Token, message)
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

        # account_id
        def set_default_account(message)
          request(:set_default_account, Softlayer::Account, message)
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

        class Representer < Softlayer::User::Customer::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
