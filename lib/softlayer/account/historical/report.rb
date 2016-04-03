module Softlayer
  class Account
    module Historical
      class Report < Softlayer::Entity
        SERVICE = 'SoftLayer_Account_Historical_Report'

        # start_date
        # end_date
        def self.get_account_host_uptime_graph_data(message)
          request(:get_account_host_uptime_graph_data, Softlayer::Container::Graph, message)
        end

        # start_date_time
        # end_date_time
        def self.get_account_host_uptime_summary(message)
          request(:get_account_host_uptime_summary, Softlayer::Container::Account::Historical::Summary, message)
        end

        # start_date
        # end_date
        def self.get_account_url_uptime_graph_data(message)
          request(:get_account_url_uptime_graph_data, Softlayer::Container::Graph, message)
        end

        # start_date_time
        # end_date_time
        def self.get_account_url_uptime_summary(message)
          request(:get_account_url_uptime_summary, Softlayer::Container::Account::Historical::Summary, message)
        end

        # configuration_value_id
        # start_date_time
        # end_date_time
        def self.get_host_uptime_detail(message)
          request(:get_host_uptime_detail, Softlayer::Container::Account::Historical::Summary::Detail, message)
        end

        # configuration_value_id
        # start_date
        # end_date
        def self.get_host_uptime_graph_data(message)
          request(:get_host_uptime_graph_data, Softlayer::Container::Graph, message)
        end

        # configuration_value_id
        # start_date_time
        # end_date_time
        def self.get_url_uptime_detail(message)
          request(:get_url_uptime_detail, Softlayer::Container::Account::Historical::Summary::Detail, message)
        end

        # configuration_value_id
        # start_date
        # end_date
        def self.get_url_uptime_graph_data(message)
          request(:get_url_uptime_graph_data, Softlayer::Container::Graph, message)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
