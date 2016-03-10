module Softlayer
  class Network
    module Message
      class Delivery
        module Email
          class Sendgrid < Softlayer::Network::Message::Delivery
            SERVICE = 'SoftLayer_Network_Message_Delivery_Email_Sendgrid'
            attr_accessor :email_address
            attr_accessor :smtp_access

            def add_unsubscribe_email_address(email_address = nil)
              message = {email_address: email_address}
              request(:add_unsubscribe_email_address, Boolean, message)
            end

            def delete_email_list_entries(list = nil, entries = nil)
              message = {list: list, entries: entries}
              request(:delete_email_list_entries, Boolean, message)
            end

            def disable_smtp_access
              request(:disable_smtp_access, Boolean)
            end

            def edit_object(template_object = nil)
              message = {template_object: template_object}
              request(:edit_object, Boolean, message)
            end

            def enable_smtp_access
              request(:enable_smtp_access, Boolean)
            end

            def get_account
              request(:get_account, Softlayer::Account)
            end

            def get_account_overview
              request(:get_account_overview, Softlayer::Container::Network::Message::Delivery::Email::Sendgrid::Account::Overview)
            end

            def get_billing_item
              request(:get_billing_item, Softlayer::Billing::Item)
            end

            def get_category_list
              request(:get_category_list, Array[String])
            end

            def get_email_address
              request(:get_email_address, String)
            end

            def get_email_list(list = nil)
              message = {list: list}
              request(:get_email_list, Array[Softlayer::Container::Network::Message::Delivery::Email::Sendgrid::List::Entry], message)
            end

            def get_object
              request(:get_object, Softlayer::Network::Message::Delivery::Email::Sendgrid)
            end

            def get_smtp_access
              request(:get_smtp_access, String)
            end

            def get_statistics(options = nil)
              message = {options: options}
              request(:get_statistics, Array[Softlayer::Container::Network::Message::Delivery::Email::Sendgrid::Statistics], message)
            end

            def get_statistics_graph(options = nil)
              message = {options: options}
              request(:get_statistics_graph, Softlayer::Container::Network::Message::Delivery::Email::Sendgrid::Statistics::Graph, message)
            end

            def get_type
              request(:get_type, Softlayer::Network::Message::Delivery::Type)
            end

            def get_vendor
              request(:get_vendor, Softlayer::Network::Message::Delivery::Vendor)
            end

            def get_vendor_portal_url
              request(:get_vendor_portal_url, String)
            end

            def send_email(email_container = nil)
              message = {email_container: email_container}
              request(:send_email, Boolean, message)
            end

            def update_email_address(email_address = nil)
              message = {email_address: email_address}
              request(:update_email_address, Boolean, message)
            end

            class Representer < Softlayer::Network::Message::Delivery::Representer
              include Representable::Hash
              include Representable::Coercion
              property :email_address, type: String
              property :smtp_access, type: String
            end
          end
        end
      end
    end
  end
end
