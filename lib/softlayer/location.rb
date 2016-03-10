module Softlayer
  class Location < Softlayer::Model
    SERVICE = 'SoftLayer_Location'
    autoload :Datacenter, 'softlayer/location/datacenter'
    autoload :Group, 'softlayer/location/group'
    autoload :Office, 'softlayer/location/office'
    autoload :Rack, 'softlayer/location/rack'
    autoload :Region, 'softlayer/location/region'
    autoload :Reservation, 'softlayer/location/reservation'
    autoload :Root, 'softlayer/location/root'
    autoload :Slot, 'softlayer/location/slot'
    autoload :Status, 'softlayer/location/status'
    autoload :Inventory, 'softlayer/location/inventory'
    autoload :Network, 'softlayer/location/network'
    autoload :Server, 'softlayer/location/server'
    autoload :Storage, 'softlayer/location/storage'
    attr_accessor :id
    attr_accessor :long_name
    attr_accessor :name
    attr_accessor :status_id
    attr_accessor :backbone_dependent_count
    attr_accessor :group_count
    attr_accessor :hardware_firewall_count
    attr_accessor :price_group_count
    attr_accessor :region_count
    attr_accessor :backbone_dependents
    attr_accessor :groups
    attr_accessor :hardware_firewalls
    attr_accessor :location_address
    attr_accessor :location_reservation_member
    attr_accessor :location_status
    attr_accessor :network_configuration_attribute
    attr_accessor :online_pptp_vpn_user_count
    attr_accessor :online_ssl_vpn_user_count
    attr_accessor :path_string
    attr_accessor :price_groups
    attr_accessor :regions
    attr_accessor :timezone
    attr_accessor :vdr_group

    def self.get_available_object_storage_datacenters
      request(:get_available_object_storage_datacenters, Array[Softlayer::Location])
    end

    def get_backbone_dependents
      request(:get_backbone_dependents, Array[Softlayer::Network::Backbone::Location::Dependent])
    end

    def self.get_datacenters
      request(:get_datacenters, Array[Softlayer::Location])
    end

    def self.get_datacenters_with_virtual_image_store_service_resource_record
      request(:get_datacenters_with_virtual_image_store_service_resource_record, Array[Softlayer::Location])
    end

    def get_groups
      request(:get_groups, Array[Softlayer::Location::Group])
    end

    def get_hardware_firewalls
      request(:get_hardware_firewalls, Array[Softlayer::Hardware])
    end

    def get_location_address
      request(:get_location_address, Softlayer::Account::Address)
    end

    def get_location_reservation_member
      request(:get_location_reservation_member, Softlayer::Location::Reservation::Rack::Member)
    end

    def get_location_status
      request(:get_location_status, Softlayer::Location::Status)
    end

    def get_network_configuration_attribute
      request(:get_network_configuration_attribute, Softlayer::Hardware::Attribute)
    end

    def get_object
      request(:get_object, Softlayer::Location)
    end

    def get_online_pptp_vpn_user_count
      request(:get_online_pptp_vpn_user_count, Integer)
    end

    def get_online_ssl_vpn_user_count
      request(:get_online_ssl_vpn_user_count, Integer)
    end

    def get_path_string
      request(:get_path_string, String)
    end

    def get_price_groups
      request(:get_price_groups, Array[Softlayer::Location::Group])
    end

    def get_regions
      request(:get_regions, Array[Softlayer::Location::Region])
    end

    def get_timezone
      request(:get_timezone, Softlayer::Locale::Timezone)
    end

    def get_vdr_group
      request(:get_vdr_group, Softlayer::Location::Group::Location::CrossReference)
    end

    def self.get_viewable_datacenters
      request(:get_viewable_datacenters, Array[Softlayer::Location])
    end

    def self.get_viewable_pops_and_data_centers
      request(:get_viewable_pops_and_data_centers, Array[Softlayer::Location])
    end

    def self.get_viewablepoint_of_presence
      request(:get_viewablepoint_of_presence, Array[Softlayer::Location])
    end

    def self.getpoint_of_presence
      request(:getpoint_of_presence, Array[Softlayer::Location])
    end

    class Representer < Representable::Decorator
      include Representable::Hash
      include Representable::Coercion
      property :id, type: Integer
      property :long_name, type: String
      property :name, type: String
      property :status_id, type: Integer
      property :backbone_dependent_count, type: BigDecimal
      property :group_count, type: BigDecimal
      property :hardware_firewall_count, type: BigDecimal
      property :price_group_count, type: BigDecimal
      property :region_count, type: BigDecimal
      property :online_pptp_vpn_user_count, type: Integer
      property :online_ssl_vpn_user_count, type: Integer
      property :path_string, type: String
    end
  end
end
