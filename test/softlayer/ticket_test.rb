require 'test_helper'

describe Softlayer::Ticket, :vcr do
  # before(:each) { configure_connection }
  # it "create a ticket" do
  #   template_object = {:assignedUserId => 12345, :notifyUserOnUpdateFlag => true, :title => "Account Profile Update Request"}
  #   contents = 'address1: "Address Edited"
  #                         address2: "newAddress2"
  #                         city: "cityEdited"
  #                         companyName: "My Company"
  #                         country: "BR"
  #                         email: "mynewemail@softlayer.com"
  #                         faxPhone: ""
  #                         firstName: "EditedName"
  #                         lastName: "Last Name"
  #                         officePhone: "123456789"
  #                         postalCode: "11111-2222"'
  #   root_password = 'TestPassword'
  #   control_panel_password = 'TestPassword'
  #   access_port = '22'
  #   ticket = Softlayer::Ticket.create_administrative_ticket(template_object, contents, nil, root_password, control_panel_password,access_port)
  #   ticket.must_be_kind_of Softlayer::Ticket
  #   ticket.assigned_user_id.must_equal 12345
  #   tickets = Softlayer::Account.get_tickets
  #   tickets[0].id.must_equal 45678
  # end

  context "mock" do
    it "create a ticket" do
      configure_connection
      Softlayer.configuration.username = 'SL000000'
      Softlayer.mock!
      template_object = {:assignedUserId => 12345, :notifyUserOnUpdateFlag => true, :title => "Account Profile Update Request"}
      contents = 'address1: "Address Edited"
                            address2: "newAddress2"
                            city: "cityEdited"
                            companyName: "My Company"
                            country: "BR"
                            email: "mynewemail@softlayer.com"
                            faxPhone: ""
                            firstName: "EditedName"
                            lastName: "Last Name"
                            officePhone: "123456789"
                            postalCode: "11111-2222"'
      root_password = 'TestPassword'
      control_panel_password = 'TestPassword'
      access_port = '22'
      ticket = Softlayer::Ticket.create_administrative_ticket(template_object, contents, nil, root_password, control_panel_password,access_port)
      ticket.must_be_kind_of Softlayer::Ticket
      tickets = Softlayer::Account.get_tickets
      tickets[0].id.must_equal 12345
      ticket.id.must_be_kind_of Fixnum
    end
  end
end
