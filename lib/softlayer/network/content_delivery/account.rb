module Softlayer
  class Network
    module ContentDelivery
      class Account < Softlayer::Entity
        SERVICE = 'SoftLayer_Network_ContentDelivery_Account'
        autoload :Status, 'softlayer/network/content_delivery/account/status'
        attr_accessor :account_id
        attr_accessor :create_date
        attr_accessor :id
        attr_accessor :status_id
        attr_accessor :authentication_ip_address_count
        attr_accessor :account
        attr_accessor :associated_cdn_account_id
        attr_accessor :authentication_ip_addresses
        attr_accessor :billing_item
        attr_accessor :cdn_account_name
        attr_accessor :cdn_account_note
        attr_accessor :cdn_solution_name
        attr_accessor :dependant_service_flag
        attr_accessor :legacy_cdn_flag
        attr_accessor :log_enabled_flag
        attr_accessor :provider_portal_access_flag
        attr_accessor :status
        attr_accessor :token_authentication_enabled_flag

        # parameter
        def self.authenticate_resource_request(message)
          request(:authenticate_resource_request, Boolean, message)
        end

        # directory_name
        def create_directory(message)
          request(:create_directory, Boolean, message)
        end

        # new_password
        def create_ftp_user(message)
          request(:create_ftp_user, Boolean, message)
        end

        # mapping_object
        def create_origin_pull_mapping(message)
          request(:create_origin_pull_mapping, Boolean, message)
        end

        # origin_domain
        # cname_record
        def create_origin_pull_rule(message)
          request(:create_origin_pull_rule, Boolean, message)
        end

        # directory
        # media_type
        def create_token_authentication_directory(message)
          request(:create_token_authentication_directory, Boolean, message)
        end

        def delete_ftp_user
          request(:delete_ftp_user, Boolean)
        end

        # origin_mapping_id
        def delete_origin_pull_rule(message)
          request(:delete_origin_pull_rule, Boolean, message)
        end

        def disable_logging
          request(:disable_logging, Boolean)
        end

        def enable_logging
          request(:enable_logging, Boolean)
        end

        def get_account
          request(:get_account, Softlayer::Account)
        end

        # begin_date_time
        # end_date_time
        def get_all_pops_bandwidth_data(message)
          request(:get_all_pops_bandwidth_data, Array[Softlayer::Container::Network::ContentDelivery::Bandwidth::PointsOfPresence::Summary], message)
        end

        # title
        # begin_date_time
        # end_date_time
        # unit
        def get_all_pops_bandwidth_image(message)
          request(:get_all_pops_bandwidth_image, Softlayer::Container::Bandwidth::GraphOutputsExtended, message)
        end

        def get_associated_cdn_account_id
          request(:get_associated_cdn_account_id, String)
        end

        def get_authentication_ip_addresses
          request(:get_authentication_ip_addresses, Array[Softlayer::Network::ContentDelivery::Authentication::Address])
        end

        def get_authentication_service_endpoints
          request(:get_authentication_service_endpoints, Array[Softlayer::Container::Network::ContentDelivery::Authentication::ServiceEndpoint])
        end

        # begin_date_time
        # end_date_time
        def get_bandwidth_data(message)
          request(:get_bandwidth_data, Array[Softlayer::Container::Network::ContentDelivery::Bandwidth::Summary], message)
        end

        # begin_date_time
        # end_date_time
        # period
        def get_bandwidth_data_with_types(message)
          request(:get_bandwidth_data_with_types, Array[Softlayer::Container::Network::ContentDelivery::Report::Usage], message)
        end

        # title
        # begin_date_time
        # end_date_time
        def get_bandwidth_image(message)
          request(:get_bandwidth_image, Softlayer::Container::Bandwidth::GraphOutputsExtended, message)
        end

        def get_billing_item
          request(:get_billing_item, Softlayer::Billing::Item)
        end

        def get_cdn_account_name
          request(:get_cdn_account_name, String)
        end

        def get_cdn_account_note
          request(:get_cdn_account_note, String)
        end

        def get_cdn_solution_name
          request(:get_cdn_solution_name, String)
        end

        # media_type
        def get_customer_origins(message)
          request(:get_customer_origins, Array[Softlayer::Container::Network::ContentDelivery::OriginPull::Mapping], message)
        end

        def get_dependant_service_flag
          request(:get_dependant_service_flag, Boolean)
        end

        # directory_name
        def get_directory_information(message)
          request(:get_directory_information, Array[Softlayer::Container::Network::Directory::Listing], message)
        end

        # begin_date_time
        # end_date_time
        def get_disk_space_usage_data_by_date(message)
          request(:get_disk_space_usage_data_by_date, Array[Softlayer::Metric::Tracking::Object::Data], message)
        end

        # begin_date_time
        # end_date_time
        def get_disk_space_usage_image_by_date(message)
          request(:get_disk_space_usage_image_by_date, Softlayer::Container::Bandwidth::GraphOutputs, message)
        end

        def get_ftp_attributes
          request(:get_ftp_attributes, Softlayer::Container::Network::Authentication::Data)
        end

        def get_legacy_cdn_flag
          request(:get_legacy_cdn_flag, Boolean)
        end

        def get_log_enabled_flag
          request(:get_log_enabled_flag, String)
        end

        def get_media_urls
          request(:get_media_urls, Array[Softlayer::Container::Network::ContentDelivery::SupportedProtocol])
        end

        def get_object
          request(:get_object, Softlayer::Network::ContentDelivery::Account)
        end

        def get_origin_pull_mapping_information
          request(:get_origin_pull_mapping_information, Array[Softlayer::Container::Network::ContentDelivery::OriginPull::Mapping])
        end

        def get_origin_pull_supported_media_urls
          request(:get_origin_pull_supported_media_urls, Array[Softlayer::Container::Network::ContentDelivery::SupportedProtocol])
        end

        def get_origin_pull_url
          request(:get_origin_pull_url, String)
        end

        def get_pop_names
          request(:get_pop_names, Array[Softlayer::Container::Network::ContentDelivery::PointsOfPresence])
        end

        def get_provider_portal_access_flag
          request(:get_provider_portal_access_flag, Boolean)
        end

        def get_provider_portal_credentials
          request(:get_provider_portal_credentials, Softlayer::Container::Network::Authentication::Data)
        end

        def get_status
          request(:get_status, Softlayer::Network::ContentDelivery::Account::Status)
        end

        def get_token_authentication_directories
          request(:get_token_authentication_directories, Array[Softlayer::Container::Network::Directory::Listing])
        end

        def get_token_authentication_enabled_flag
          request(:get_token_authentication_enabled_flag, Boolean)
        end

        def get_vendor_ftp_attributes
          request(:get_vendor_ftp_attributes, Softlayer::Container::Network::Authentication::Data)
        end

        # object_urls
        def load_content(message)
          request(:load_content, Boolean, message)
        end

        # enable_flag
        # mime_types
        def manage_http_compression(message)
          request(:manage_http_compression, Boolean, message)
        end

        # object_urls
        def purge_cache(message)
          request(:purge_cache, Array[Softlayer::Container::Network::ContentDelivery::PurgeService::Response], message)
        end

        # directory
        # media_type
        def remove_authentication_directory(message)
          request(:remove_authentication_directory, Boolean, message)
        end

        # source
        def remove_file(message)
          request(:remove_file, Boolean, message)
        end

        # webservice_endpoint
        # protocol
        def set_authentication_service_endpoint(message)
          request(:set_authentication_service_endpoint, Boolean, message)
        end

        # new_password
        def set_ftp_password(message)
          request(:set_ftp_password, Boolean, message)
        end

        # note
        def update_note(message)
          request(:update_note, Boolean, message)
        end

        # source
        # target
        def upload_stream(message)
          request(:upload_stream, Boolean, message)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :account_id, type: Integer
          property :create_date, type: DateTime
          property :id, type: Integer
          property :status_id, type: Integer
          property :authentication_ip_address_count, type: BigDecimal
          property :associated_cdn_account_id, type: String
          property :cdn_account_name, type: String
          property :cdn_account_note, type: String
          property :cdn_solution_name, type: String
          property :dependant_service_flag, type: Boolean
          property :legacy_cdn_flag, type: Boolean
          property :log_enabled_flag, type: String
          property :provider_portal_access_flag, type: Boolean
          property :token_authentication_enabled_flag, type: Boolean
        end
      end
    end
  end
end
