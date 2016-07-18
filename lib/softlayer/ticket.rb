module Softlayer
  class Ticket < Softlayer::Entity
    SERVICE = 'SoftLayer_Ticket'
    autoload :Activity, 'softlayer/ticket/activity'
    autoload :Attachment, 'softlayer/ticket/attachment'
    autoload :Chat, 'softlayer/ticket/chat'
    autoload :Group, 'softlayer/ticket/group'
    autoload :Priority, 'softlayer/ticket/priority'
    autoload :State, 'softlayer/ticket/state'
    autoload :Status, 'softlayer/ticket/status'
    autoload :Subject, 'softlayer/ticket/subject'
    autoload :Survey, 'softlayer/ticket/survey'
    autoload :Type, 'softlayer/ticket/type'
    autoload :Update, 'softlayer/ticket/update'
    attr_accessor :account_id
    attr_accessor :assigned_user_id
    attr_accessor :billable_flag
    attr_accessor :change_owner_flag
    attr_accessor :create_date
    attr_accessor :final_comments
    attr_accessor :group_id
    attr_accessor :id
    attr_accessor :last_edit_date
    attr_accessor :last_edit_type
    attr_accessor :last_response_date
    attr_accessor :location_id
    attr_accessor :modify_date
    attr_accessor :notify_user_on_update_flag
    attr_accessor :originating_ip_address
    attr_accessor :priority
    attr_accessor :responsible_brand_id
    attr_accessor :server_administration_billing_amount
    attr_accessor :server_administration_billing_invoice_id
    attr_accessor :server_administration_flag
    attr_accessor :server_administration_refund_invoice_id
    attr_accessor :service_provider_id
    attr_accessor :service_provider_resource_id
    attr_accessor :status_id
    attr_accessor :subject_id
    attr_accessor :title
    attr_accessor :total_update_count
    attr_accessor :user_editable_flag
    attr_accessor :assigned_agent_count
    attr_accessor :attached_additional_email_count
    attr_accessor :attached_file_count
    attr_accessor :attached_resource_count
    attr_accessor :attached_virtual_guest_count
    attr_accessor :employee_attachment_count
    attr_accessor :invoice_item_count
    attr_accessor :scheduled_action_count
    attr_accessor :state_count
    attr_accessor :tag_reference_count
    attr_accessor :update_count
    attr_accessor :account
    attr_accessor :assigned_agents
    attr_accessor :assigned_user
    attr_accessor :attached_additional_emails
    attr_accessor :attached_files
    attr_accessor :attached_hardware
    attr_accessor :attached_hardware_count
    attr_accessor :attached_resources
    attr_accessor :attached_virtual_guests
    attr_accessor :awaiting_user_response_flag
    attr_accessor :cancellation_request
    attr_accessor :employee_attachments
    attr_accessor :first_attached_resource
    attr_accessor :first_update
    attr_accessor :group
    attr_accessor :invoice_items
    attr_accessor :last_activity
    attr_accessor :last_editor
    attr_accessor :last_update
    attr_accessor :last_viewed_date
    attr_accessor :location
    attr_accessor :new_updates_flag
    attr_accessor :scheduled_actions
    attr_accessor :server_administration_billing_invoice
    attr_accessor :server_administration_refund_invoice
    attr_accessor :service_provider
    attr_accessor :state
    attr_accessor :status
    attr_accessor :subject
    attr_accessor :tag_references
    attr_accessor :updates

    # agent_id
    def add_assigned_agent(message)
      request(:add_assigned_agent, nil, message)
    end

    # emails
    def add_attached_additional_emails(message)
      request(:add_attached_additional_emails, Boolean, message)
    end

    # file_attachment
    def add_attached_file(message)
      request(:add_attached_file, Softlayer::Ticket::Attachment::File, message)
    end

    # hardware_id
    def add_attached_hardware(message)
      request(:add_attached_hardware, Softlayer::Ticket::Attachment::Hardware, message)
    end

    # guest_id
    def add_attached_virtual_guest(message)
      request(:add_attached_virtual_guest, Softlayer::Ticket::Attachment::Virtual::Guest, message)
    end

    # final_comments
    def add_final_comments(message)
      request(:add_final_comments, Boolean, message)
    end

    # activation_time
    def add_scheduled_alert(message)
      request(:add_scheduled_alert, nil, message)
    end

    # activation_time
    def add_scheduled_auto_close(message)
      request(:add_scheduled_auto_close, nil, message)
    end

    # template_object
    # attached_files
    def add_update(message)
      request(:add_update, Array[Softlayer::Ticket::Update], message)
    end

    # template_object
    # contents
    # attachment_id
    # root_password
    # control_panel_password
    # access_port
    # attached_files
    # attachment_type
    def self.create_administrative_ticket(message)
      request(:create_administrative_ticket, Softlayer::Ticket, message)
    end

    # attachment_id
    # reason
    # content
    # cancel_associated_items
    # attachment_type
    def self.create_cancel_server_ticket(message)
      request(:create_cancel_server_ticket, Softlayer::Ticket, message)
    end

    # attachment_id
    # reason
    # content
    # attachment_type
    def self.create_cancel_service_ticket(message)
      request(:create_cancel_service_ticket, Softlayer::Ticket, message)
    end

    # template_object
    # contents
    # attachment_id
    # root_password
    # control_panel_password
    # access_port
    # attached_files
    # attachment_type
    def self.create_standard_ticket(message)
      request(:create_standard_ticket, Softlayer::Ticket, message)
    end

    # attachment_id
    # generic_upgrade
    # upgrade_maintenance_window
    # details
    # attachment_type
    def self.create_upgrade_ticket(message)
      request(:create_upgrade_ticket, Softlayer::Ticket, message)
    end

    # template_object
    # contents
    # attached_files
    def edit(message)
      request(:edit, Softlayer::Ticket, message)
    end

    def get_account
      request(:get_account, Softlayer::Account)
    end

    def self.get_all_ticket_groups
      request(:get_all_ticket_groups, Array[Softlayer::Ticket::Group])
    end

    def self.get_all_ticket_statuses
      request(:get_all_ticket_statuses, Array[Softlayer::Ticket::Status])
    end

    def get_assigned_agents
      request(:get_assigned_agents, Array[Softlayer::User::Customer])
    end

    def get_assigned_user
      request(:get_assigned_user, Softlayer::User::Customer)
    end

    def get_attached_additional_emails
      request(:get_attached_additional_emails, Array[Softlayer::User::Customer::AdditionalEmail])
    end

    # attachment_id
    def get_attached_file(message)
      request(:get_attached_file, Softlayer::Base64Binary, message)
    end

    def get_attached_files
      request(:get_attached_files, Array[Softlayer::Ticket::Attachment::File])
    end

    def get_attached_hardware
      request(:get_attached_hardware, Array[Softlayer::Hardware])
    end

    def get_attached_hardware_count
      request(:get_attached_hardware_count, Integer)
    end

    def get_attached_resources
      request(:get_attached_resources, Array[Softlayer::Ticket::Attachment])
    end

    def get_attached_virtual_guests
      request(:get_attached_virtual_guests, Array[Softlayer::Virtual::Guest])
    end

    def get_awaiting_user_response_flag
      request(:get_awaiting_user_response_flag, Boolean)
    end

    def get_cancellation_request
      request(:get_cancellation_request, Softlayer::Billing::Item::Cancellation::Request)
    end

    def get_employee_attachments
      request(:get_employee_attachments, Array[Softlayer::User::Employee])
    end

    def get_first_attached_resource
      request(:get_first_attached_resource, Softlayer::Ticket::Attachment)
    end

    def get_first_update
      request(:get_first_update, Softlayer::Ticket::Update)
    end

    def get_group
      request(:get_group, Softlayer::Ticket::Group)
    end

    def get_invoice_items
      request(:get_invoice_items, Array[Softlayer::Billing::Invoice::Item])
    end

    def get_last_activity
      request(:get_last_activity, Softlayer::Ticket::Activity)
    end

    def get_last_editor
      request(:get_last_editor, Softlayer::User::Interface)
    end

    def get_last_update
      request(:get_last_update, Softlayer::Ticket::Update)
    end

    def get_last_viewed_date
      request(:get_last_viewed_date, DateTime)
    end

    def get_location
      request(:get_location, Softlayer::Location)
    end

    def get_new_updates_flag
      request(:get_new_updates_flag, Boolean)
    end

    def get_object
      request(:get_object, Softlayer::Ticket)
    end

    def get_scheduled_actions
      request(:get_scheduled_actions, Array[Softlayer::Provisioning::Version1::Transaction])
    end

    def get_server_administration_billing_invoice
      request(:get_server_administration_billing_invoice, Softlayer::Billing::Invoice)
    end

    def get_server_administration_refund_invoice
      request(:get_server_administration_refund_invoice, Softlayer::Billing::Invoice)
    end

    def get_service_provider
      request(:get_service_provider, Softlayer::Service::Provider)
    end

    def get_state
      request(:get_state, Array[Softlayer::Ticket::State])
    end

    def get_status
      request(:get_status, Softlayer::Ticket::Status)
    end

    def get_subject
      request(:get_subject, Softlayer::Ticket::Subject)
    end

    def get_tag_references
      request(:get_tag_references, Array[Softlayer::Tag::Reference])
    end

    # close_date
    def self.get_tickets_closed_since_date(message)
      request(:get_tickets_closed_since_date, Array[Softlayer::Ticket], message)
    end

    def get_updates
      request(:get_updates, Array[Softlayer::Ticket::Update])
    end

    def mark_as_viewed
      request(:mark_as_viewed, nil)
    end

    # agent_id
    def remove_assigned_agent(message)
      request(:remove_assigned_agent, nil, message)
    end

    # emails
    def remove_attached_additional_emails(message)
      request(:remove_attached_additional_emails, Boolean, message)
    end

    # hardware_id
    def remove_attached_hardware(message)
      request(:remove_attached_hardware, Boolean, message)
    end

    # guest_id
    def remove_attached_virtual_guest(message)
      request(:remove_attached_virtual_guest, Boolean, message)
    end

    def remove_scheduled_alert
      request(:remove_scheduled_alert, nil)
    end

    def remove_scheduled_auto_close
      request(:remove_scheduled_auto_close, nil)
    end

    # tags
    def set_tags(message)
      request(:set_tags, Boolean, message)
    end

    def self.survey_eligible
      request(:survey_eligible, Boolean)
    end

    # emails
    def update_attached_additional_emails(message)
      request(:update_attached_additional_emails, Boolean, message)
    end

    class Representer < Softlayer::Entity::Representer
      include Representable::Hash
      include Representable::Coercion
      property :account_id, type: Integer
      property :assigned_user_id, type: Integer
      property :billable_flag, type: Boolean
      property :change_owner_flag, type: Boolean
      property :create_date, type: DateTime
      property :final_comments, type: String
      property :group_id, type: Integer
      property :id, type: Integer
      property :last_edit_date, type: DateTime
      property :last_edit_type, type: String
      property :last_response_date, type: DateTime
      property :location_id, type: Integer
      property :modify_date, type: DateTime
      property :notify_user_on_update_flag, type: Boolean
      property :originating_ip_address, type: String
      property :priority, type: Integer
      property :responsible_brand_id, type: Integer
      property :server_administration_billing_amount, type: Integer
      property :server_administration_billing_invoice_id, type: Integer
      property :server_administration_flag, type: Integer
      property :server_administration_refund_invoice_id, type: Integer
      property :service_provider_id, type: Integer
      property :service_provider_resource_id, type: Integer
      property :status_id, type: Integer
      property :subject_id, type: Integer
      property :title, type: String
      property :total_update_count, type: Integer
      property :user_editable_flag, type: Boolean
      property :assigned_agent_count, type: BigDecimal
      property :attached_additional_email_count, type: BigDecimal
      property :attached_file_count, type: BigDecimal
      property :attached_resource_count, type: BigDecimal
      property :attached_virtual_guest_count, type: BigDecimal
      property :employee_attachment_count, type: BigDecimal
      property :invoice_item_count, type: BigDecimal
      property :scheduled_action_count, type: BigDecimal
      property :state_count, type: BigDecimal
      property :tag_reference_count, type: BigDecimal
      property :update_count, type: BigDecimal
      property :attached_hardware_count, type: Integer
      property :awaiting_user_response_flag, type: Boolean
      property :last_viewed_date, type: DateTime
      property :new_updates_flag, type: Boolean
    end
  end
end
