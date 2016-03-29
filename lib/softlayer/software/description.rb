module Softlayer
  module Software
    class Description < Softlayer::Entity
      SERVICE = 'SoftLayer_Software_Description'
      autoload :Attribute, 'softlayer/software/description/attribute'
      autoload :Feature, 'softlayer/software/description/feature'
      autoload :RequiredUser, 'softlayer/software/description/required_user'
      attr_accessor :control_panel
      attr_accessor :id
      attr_accessor :license_term_unit
      attr_accessor :license_term_value
      attr_accessor :long_description
      attr_accessor :manufacturer
      attr_accessor :name
      attr_accessor :operating_system
      attr_accessor :reference_code
      attr_accessor :upgrade_software_description_id
      attr_accessor :upgrade_sw_desc_id
      attr_accessor :version
      attr_accessor :virtual_license
      attr_accessor :virtualization_platform
      attr_accessor :attribute_count
      attr_accessor :compatible_software_description_count
      attr_accessor :feature_count
      attr_accessor :latest_version_count
      attr_accessor :product_item_count
      attr_accessor :software_license_count
      attr_accessor :valid_filesystem_type_count
      attr_accessor :attributes
      attr_accessor :average_installation_duration
      attr_accessor :compatible_software_descriptions
      attr_accessor :features
      attr_accessor :latest_version
      attr_accessor :product_items
      attr_accessor :provision_transaction_group
      attr_accessor :reload_transaction_group
      attr_accessor :required_user
      attr_accessor :software_licenses
      attr_accessor :upgrade_software_description
      attr_accessor :upgrade_sw_desc
      attr_accessor :valid_filesystem_types

      def self.get_all_objects
        request(:get_all_objects, Array[Softlayer::Software::Description])
      end

      def get_attributes
        request(:get_attributes, Array[Softlayer::Software::Description::Attribute])
      end

      def get_average_installation_duration
        request(:get_average_installation_duration, Integer)
      end

      def get_compatible_software_descriptions
        request(:get_compatible_software_descriptions, Array[Softlayer::Software::Description])
      end

      def get_features
        request(:get_features, Array[Softlayer::Software::Description::Feature])
      end

      def get_latest_version
        request(:get_latest_version, Array[Softlayer::Software::Description])
      end

      def get_object
        request(:get_object, Softlayer::Software::Description)
      end

      def get_product_items
        request(:get_product_items, Array[Softlayer::Product::Item])
      end

      def get_provision_transaction_group
        request(:get_provision_transaction_group, Softlayer::Provisioning::Version1::Transaction::Group)
      end

      def get_reload_transaction_group
        request(:get_reload_transaction_group, Softlayer::Provisioning::Version1::Transaction::Group)
      end

      def get_required_user
        request(:get_required_user, String)
      end

      def get_software_licenses
        request(:get_software_licenses, Array[Softlayer::Software::License])
      end

      def get_upgrade_software_description
        request(:get_upgrade_software_description, Softlayer::Software::Description)
      end

      def get_upgrade_sw_desc
        request(:get_upgrade_sw_desc, Softlayer::Software::Description)
      end

      def get_valid_filesystem_types
        request(:get_valid_filesystem_types, Array[Softlayer::Configuration::Storage::Filesystem::Type])
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :control_panel, type: Integer
        property :id, type: Integer
        property :license_term_unit, type: String
        property :license_term_value, type: Integer
        property :long_description, type: String
        property :manufacturer, type: String
        property :name, type: String
        property :operating_system, type: Integer
        property :reference_code, type: String
        property :upgrade_software_description_id, type: Integer
        property :upgrade_sw_desc_id, type: Integer
        property :version, type: String
        property :virtual_license, type: Integer
        property :virtualization_platform, type: Integer
        property :attribute_count, type: BigDecimal
        property :compatible_software_description_count, type: BigDecimal
        property :feature_count, type: BigDecimal
        property :latest_version_count, type: BigDecimal
        property :product_item_count, type: BigDecimal
        property :software_license_count, type: BigDecimal
        property :valid_filesystem_type_count, type: BigDecimal
        property :average_installation_duration, type: Integer
        property :required_user, type: String
      end
    end
  end
end
