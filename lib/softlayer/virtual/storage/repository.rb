module Softlayer
  module Virtual
    module Storage
      class Repository < Softlayer::Entity
        SERVICE = 'SoftLayer_Virtual_Storage_Repository'
        autoload :Type, 'softlayer/virtual/storage/repository/type'
        attr_accessor :capacity
        attr_accessor :description
        attr_accessor :id
        attr_accessor :name
        attr_accessor :public_flag
        attr_accessor :type_id
        attr_accessor :disk_image_count
        attr_accessor :guest_count
        attr_accessor :account
        attr_accessor :billing_item
        attr_accessor :datacenter
        attr_accessor :disk_images
        attr_accessor :guests
        attr_accessor :metric_tracking_object
        attr_accessor :public_image_billing_item
        attr_accessor :type

        def get_account
          request(:get_account, Softlayer::Account)
        end

        def get_archive_disk_usage_rate_per_gb
          request(:get_archive_disk_usage_rate_per_gb, Float)
        end

        def get_average_usage_metric_data_by_date(start_date_time = nil, end_date_time = nil)
          message = {start_date_time: start_date_time, end_date_time: end_date_time}
          request(:get_average_usage_metric_data_by_date, Float, message)
        end

        def get_billing_item
          request(:get_billing_item, Softlayer::Billing::Item)
        end

        def get_datacenter
          request(:get_datacenter, Softlayer::Location)
        end

        def get_disk_images
          request(:get_disk_images, Array[Softlayer::Virtual::Disk::Image])
        end

        def get_guests
          request(:get_guests, Array[Softlayer::Virtual::Guest])
        end

        def get_metric_tracking_object
          request(:get_metric_tracking_object, Softlayer::Metric::Tracking::Object::Virtual::Storage::Repository)
        end

        def get_object
          request(:get_object, Softlayer::Virtual::Storage::Repository)
        end

        def get_public_image_billing_item
          request(:get_public_image_billing_item, Softlayer::Billing::Item)
        end

        def get_public_image_disk_usage_rate_per_gb
          request(:get_public_image_disk_usage_rate_per_gb, Float)
        end

        def get_storage_locations
          request(:get_storage_locations, Array[Softlayer::Location])
        end

        def get_type
          request(:get_type, Softlayer::Virtual::Storage::Repository::Type)
        end

        def get_usage_metric_data_by_date(start_date_time = nil, end_date_time = nil)
          message = {start_date_time: start_date_time, end_date_time: end_date_time}
          request(:get_usage_metric_data_by_date, Array[Softlayer::Metric::Tracking::Object::Data], message)
        end

        def get_usage_metric_image_by_date(start_date_time = nil, end_date_time = nil)
          message = {start_date_time: start_date_time, end_date_time: end_date_time}
          request(:get_usage_metric_image_by_date, Softlayer::Container::Bandwidth::GraphOutputs, message)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :capacity, type: Float
          property :description, type: String
          property :id, type: Integer
          property :name, type: String
          property :public_flag, type: Integer
          property :type_id, type: Integer
          property :disk_image_count, type: BigDecimal
          property :guest_count, type: BigDecimal
        end
      end
    end
  end
end
