module Softlayer
  class Network
    class Storage
      class Schedule < Softlayer::Entity
        SERVICE = 'SoftLayer_Network_Storage_Schedule'
        autoload :Property, 'softlayer/network/storage/schedule/property'
        autoload :Type, 'softlayer/network/storage/schedule/type'
        attr_accessor :active
        attr_accessor :create_date
        attr_accessor :id
        attr_accessor :modify_date
        attr_accessor :name
        attr_accessor :partnership_id
        attr_accessor :type_id
        attr_accessor :volume_id
        attr_accessor :event_count
        attr_accessor :property_count
        attr_accessor :snapshot_count
        attr_accessor :day_of_month
        attr_accessor :day_of_week
        attr_accessor :events
        attr_accessor :hour
        attr_accessor :minute
        attr_accessor :month_of_year
        attr_accessor :partnership
        attr_accessor :properties
        attr_accessor :retention_count
        attr_accessor :snapshots
        attr_accessor :type
        attr_accessor :volume

        def self.create_object(template_object = nil)
          message = {template_object: template_object}
          request(:create_object, Softlayer::Network::Storage::Schedule, message)
        end

        def delete_object
          request(:delete_object, Boolean)
        end

        def edit_object(template_object = nil)
          message = {template_object: template_object}
          request(:edit_object, Boolean, message)
        end

        def get_day_of_month
          request(:get_day_of_month, String)
        end

        def get_day_of_week
          request(:get_day_of_week, String)
        end

        def get_events
          request(:get_events, Array[Softlayer::Network::Storage::Event])
        end

        def get_hour
          request(:get_hour, String)
        end

        def get_minute
          request(:get_minute, String)
        end

        def get_month_of_year
          request(:get_month_of_year, String)
        end

        def get_object
          request(:get_object, Softlayer::Network::Storage::Schedule)
        end

        def get_partnership
          request(:get_partnership, Softlayer::Network::Storage::Partnership)
        end

        def get_properties
          request(:get_properties, Array[Softlayer::Network::Storage::Schedule::Property])
        end

        def get_retention_count
          request(:get_retention_count, String)
        end

        def get_snapshots
          request(:get_snapshots, Array[Softlayer::Network::Storage])
        end

        def get_type
          request(:get_type, Softlayer::Network::Storage::Schedule::Type)
        end

        def get_volume
          request(:get_volume, Softlayer::Network::Storage)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :active, type: Integer
          property :create_date, type: DateTime
          property :id, type: Integer
          property :modify_date, type: DateTime
          property :name, type: String
          property :partnership_id, type: Integer
          property :type_id, type: Integer
          property :volume_id, type: Integer
          property :event_count, type: BigDecimal
          property :property_count, type: BigDecimal
          property :snapshot_count, type: BigDecimal
          property :day_of_month, type: String
          property :day_of_week, type: String
          property :hour, type: String
          property :minute, type: String
          property :month_of_year, type: String
          property :retention_count, type: String
        end
      end
    end
  end
end
