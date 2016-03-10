module Softlayer
  module User
    class Employee < Softlayer::User::Interface
      autoload :Department, 'softlayer/user/employee/department'
      attr_accessor :display_name
      attr_accessor :email
      attr_accessor :employee_department_id
      attr_accessor :first_name
      attr_accessor :last_name
      attr_accessor :office_phone
      attr_accessor :username
      attr_accessor :action_count
      attr_accessor :chat_transcript_count
      attr_accessor :layout_profile_count
      attr_accessor :role_count
      attr_accessor :ticket_activity_count
      attr_accessor :ticket_attachment_reference_count
      attr_accessor :actions
      attr_accessor :chat_transcript
      attr_accessor :employee_department
      attr_accessor :layout_profiles
      attr_accessor :metric_tracking_object
      attr_accessor :roles
      attr_accessor :ticket_activities
      attr_accessor :ticket_attachment_references

      class Representer < Softlayer::User::Interface::Representer
        include Representable::Hash
        include Representable::Coercion
        property :display_name, type: String
        property :email, type: String
        property :employee_department_id, type: Integer
        property :first_name, type: String
        property :last_name, type: String
        property :office_phone, type: String
        property :username, type: String
        property :action_count, type: BigDecimal
        property :chat_transcript_count, type: BigDecimal
        property :layout_profile_count, type: BigDecimal
        property :role_count, type: BigDecimal
        property :ticket_activity_count, type: BigDecimal
        property :ticket_attachment_reference_count, type: BigDecimal
      end
    end
  end
end
