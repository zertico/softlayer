module Softlayer
  class Mock
    class Ticket < Softlayer::Mock
      def self.create_administrative_ticket(template_object = nil, contents = nil, attachment_id = nil, root_password = nil, control_panel_password = nil, access_port = nil, attached_files = nil, attachment_type = nil)
        account = Softlayer::Account.get_object
        ticket = get_class_from_return_object.constantize.new

        ticket.account_id = account.id
        ticket.account = account
        ticket.assigned_user_id = template_object[:assignedUserId]
        ticket.create_date = Time.now
        ticket.id = all.length + 1
        ticket.modify_date = ticket.create_date
        ticket.priority = 1
        ticket.responsible_brand_id = account.brand_id
        ticket.status_id = 1
        ticket.title = template_object[:title]
        ticket.notify_user_on_update_flag = template_object[:notifyUserOnUpdateFlag]
        save_on_database("zertico#{ticket.id}",ticket)
      end

      def self.get_tickets
        all
      end
    end
  end
end
