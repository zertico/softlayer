require 'test_helper'

describe Softlayer::Mock::Ticket do
  context "create_administrative_ticket" do
    it "create with no attachment" do
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
      ticket = subject.class.create_administrative_ticket(template_object, contents, nil, root_password, control_panel_password,access_port)
      ticket.title.must_equal template_object[:title]
      ticket.assigned_user_id.must_equal template_object[:assignedUserId]
      ticket.id.must_be_kind_of Fixnum
    end
  end
end
