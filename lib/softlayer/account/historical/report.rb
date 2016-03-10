module Softlayer
  class Account
    module Historical
      class Report < Softlayer::Model
        SERVICE = 'SoftLayer_Account_Historical_Report'

        def self.get_account_host_uptime_graph_data(start_date = nil, end_date = nil)
          message = {start_date: start_date, end_date: end_date}
          request(:get_account_host_uptime_graph_data, Softlayer::Container::Graph, message)
        end

        def self.get_account_host_uptime_summary(start_date_time = nil, end_date_time = nil)
          message = {start_date_time: start_date_time, end_date_time: end_date_time}
          request(:get_account_host_uptime_summary, Softlayer::Container::Account::Historical::Summary, message)
        end

        def self.get_account_url_uptime_graph_data(start_date = nil, end_date = nil)
          message = {start_date: start_date, end_date: end_date}
          request(:get_account_url_uptime_graph_data, Softlayer::Container::Graph, message)
        end

        def self.get_account_url_uptime_summary(start_date_time = nil, end_date_time = nil)
          message = {start_date_time: start_date_time, end_date_time: end_date_time}
          request(:get_account_url_uptime_summary, Softlayer::Container::Account::Historical::Summary, message)
        end

        def self.get_host_uptime_detail(configuration_value_id = nil, start_date_time = nil, end_date_time = nil)
          message = {configuration_value_id: configuration_value_id, start_date_time: start_date_time, end_date_time: end_date_time}
          request(:get_host_uptime_detail, Softlayer::Container::Account::Historical::Summary::Detail, message)
        end

        def self.get_host_uptime_graph_data(configuration_value_id = nil, start_date = nil, end_date = nil)
          message = {configuration_value_id: configuration_value_id, start_date: start_date, end_date: end_date}
          request(:get_host_uptime_graph_data, Softlayer::Container::Graph, message)
        end

        def self.get_url_uptime_detail(configuration_value_id = nil, start_date_time = nil, end_date_time = nil)
          message = {configuration_value_id: configuration_value_id, start_date_time: start_date_time, end_date_time: end_date_time}
          request(:get_url_uptime_detail, Softlayer::Container::Account::Historical::Summary::Detail, message)
        end

        def self.get_url_uptime_graph_data(configuration_value_id = nil, start_date = nil, end_date = nil)
          message = {configuration_value_id: configuration_value_id, start_date: start_date, end_date: end_date}
          request(:get_url_uptime_graph_data, Softlayer::Container::Graph, message)
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
