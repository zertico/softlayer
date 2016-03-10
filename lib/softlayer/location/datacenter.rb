module Softlayer
  class Location
    class Datacenter < Softlayer::Location
      SERVICE = 'SoftLayer_Location_Datacenter'
      attr_accessor :active_item_presale_event_count
      attr_accessor :active_presale_event_count
      attr_accessor :backend_hardware_router_count
      attr_accessor :bound_subnet_count
      attr_accessor :brand_country_restriction_count
      attr_accessor :frontend_hardware_router_count
      attr_accessor :hardware_router_count
      attr_accessor :presale_event_count
      attr_accessor :routable_bound_subnet_count
      attr_accessor :active_item_presale_events
      attr_accessor :active_presale_events
      attr_accessor :backend_hardware_routers
      attr_accessor :bound_subnets
      attr_accessor :brand_country_restrictions
      attr_accessor :frontend_hardware_routers
      attr_accessor :hardware_routers
      attr_accessor :presale_events
      attr_accessor :regional_group
      attr_accessor :regional_internet_registry
      attr_accessor :routable_bound_subnets

      def get_active_item_presale_events
        request(:get_active_item_presale_events, Array[Softlayer::Sales::Presale::Event])
      end

      def get_active_presale_events
        request(:get_active_presale_events, Array[Softlayer::Sales::Presale::Event])
      end

      def self.get_available_object_storage_datacenters
        request(:get_available_object_storage_datacenters, Array[Softlayer::Location])
      end

      def get_backbone_dependents
        request(:get_backbone_dependents, Array[Softlayer::Network::Backbone::Location::Dependent])
      end

      def get_backend_hardware_routers
        request(:get_backend_hardware_routers, Array[Softlayer::Hardware])
      end

      def get_bound_subnets
        request(:get_bound_subnets, Array[Softlayer::Network::Subnet])
      end

      def get_brand_country_restrictions
        request(:get_brand_country_restrictions, Array[Softlayer::Brand::Restriction::Location::CustomerCountry])
      end

      def self.get_datacenters
        request(:get_datacenters, Array[Softlayer::Location])
      end

      def self.get_datacenters_with_virtual_image_store_service_resource_record
        request(:get_datacenters_with_virtual_image_store_service_resource_record, Array[Softlayer::Location])
      end

      def get_frontend_hardware_routers
        request(:get_frontend_hardware_routers, Array[Softlayer::Hardware])
      end

      def get_groups
        request(:get_groups, Array[Softlayer::Location::Group])
      end

      def get_hardware_firewalls
        request(:get_hardware_firewalls, Array[Softlayer::Hardware])
      end

      def get_hardware_routers
        request(:get_hardware_routers, Array[Softlayer::Hardware])
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
        request(:get_object, Softlayer::Location::Datacenter)
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

      def get_presale_events
        request(:get_presale_events, Array[Softlayer::Sales::Presale::Event])
      end

      def get_price_groups
        request(:get_price_groups, Array[Softlayer::Location::Group])
      end

      def get_regional_group
        request(:get_regional_group, Softlayer::Location::Group::Regional)
      end

      def get_regional_internet_registry
        request(:get_regional_internet_registry, Softlayer::Network::Regional::Internet::Registry)
      end

      def get_regions
        request(:get_regions, Array[Softlayer::Location::Region])
      end

      def get_routable_bound_subnets
        request(:get_routable_bound_subnets, Array[Softlayer::Network::Subnet])
      end

      def get_statistics_graph_image
        request(:get_statistics_graph_image, Softlayer::Base64Binary)
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

      class Representer < Softlayer::Location::Representer
        include Representable::Hash
        include Representable::Coercion
        property :active_item_presale_event_count, type: BigDecimal
        property :active_presale_event_count, type: BigDecimal
        property :backend_hardware_router_count, type: BigDecimal
        property :bound_subnet_count, type: BigDecimal
        property :brand_country_restriction_count, type: BigDecimal
        property :frontend_hardware_router_count, type: BigDecimal
        property :hardware_router_count, type: BigDecimal
        property :presale_event_count, type: BigDecimal
        property :routable_bound_subnet_count, type: BigDecimal
      end
    end
  end
end
