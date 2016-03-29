module Softlayer
  module Product
    class Item < Softlayer::Entity
      autoload :Attribute, 'softlayer/product/item/attribute'
      autoload :Bundles, 'softlayer/product/item/bundles'
      autoload :Category, 'softlayer/product/item/category'
      autoload :Price, 'softlayer/product/item/price'
      autoload :Requirement, 'softlayer/product/item/requirement'
      autoload :Billing, 'softlayer/product/item/billing'
      autoload :Link, 'softlayer/product/item/link'
      autoload :Policy, 'softlayer/product/item/policy'
      autoload :Resource, 'softlayer/product/item/resource'
      autoload :Tax, 'softlayer/product/item/tax'
      attr_accessor :capacity
      attr_accessor :description
      attr_accessor :id
      attr_accessor :item_tax_category_id
      attr_accessor :key_name
      attr_accessor :long_description
      attr_accessor :software_description_id
      attr_accessor :units
      attr_accessor :upgrade_item_id
      attr_accessor :active_presale_event_count
      attr_accessor :active_usage_price_count
      attr_accessor :attribute_count
      attr_accessor :availability_attribute_count
      attr_accessor :bundle_count
      attr_accessor :category_count
      attr_accessor :configuration_template_count
      attr_accessor :conflict_count
      attr_accessor :downgrade_item_count
      attr_accessor :global_category_conflict_count
      attr_accessor :inventory_count
      attr_accessor :location_conflict_count
      attr_accessor :package_count
      attr_accessor :presale_event_count
      attr_accessor :price_count
      attr_accessor :requirement_count
      attr_accessor :third_party_policy_assignment_count
      attr_accessor :upgrade_item_count
      attr_accessor :active_presale_events
      attr_accessor :active_usage_prices
      attr_accessor :attributes
      attr_accessor :availability_attributes
      attr_accessor :billing_type
      attr_accessor :bundle
      attr_accessor :capacity_restricted_product_flag
      attr_accessor :categories
      attr_accessor :configuration_templates
      attr_accessor :conflicts
      attr_accessor :core_restricted_item_flag
      attr_accessor :downgrade_item
      attr_accessor :downgrade_items
      attr_accessor :global_category_conflicts
      attr_accessor :hardware_generic_component_model
      attr_accessor :hide_from_portal_flag
      attr_accessor :inventory
      attr_accessor :is_engineered_server_product
      attr_accessor :item_category
      attr_accessor :location_conflicts
      attr_accessor :object_storage_item_flag
      attr_accessor :packages
      attr_accessor :physical_core_capacity
      attr_accessor :presale_events
      attr_accessor :prices
      attr_accessor :requirements
      attr_accessor :software_description
      attr_accessor :tax_category
      attr_accessor :third_party_policy_assignments
      attr_accessor :third_party_support_vendor
      attr_accessor :total_physical_core_capacity
      attr_accessor :total_physical_core_count
      attr_accessor :total_processor_capacity
      attr_accessor :upgrade_item
      attr_accessor :upgrade_items

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :capacity, type: Float
        property :description, type: String
        property :id, type: Integer
        property :item_tax_category_id, type: Integer
        property :key_name, type: String
        property :long_description, type: String
        property :software_description_id, type: Integer
        property :units, type: String
        property :upgrade_item_id, type: Integer
        property :active_presale_event_count, type: BigDecimal
        property :active_usage_price_count, type: BigDecimal
        property :attribute_count, type: BigDecimal
        property :availability_attribute_count, type: BigDecimal
        property :bundle_count, type: BigDecimal
        property :category_count, type: BigDecimal
        property :configuration_template_count, type: BigDecimal
        property :conflict_count, type: BigDecimal
        property :downgrade_item_count, type: BigDecimal
        property :global_category_conflict_count, type: BigDecimal
        property :inventory_count, type: BigDecimal
        property :location_conflict_count, type: BigDecimal
        property :package_count, type: BigDecimal
        property :presale_event_count, type: BigDecimal
        property :price_count, type: BigDecimal
        property :requirement_count, type: BigDecimal
        property :third_party_policy_assignment_count, type: BigDecimal
        property :upgrade_item_count, type: BigDecimal
        property :billing_type, type: String
        property :capacity_restricted_product_flag, type: Boolean
        property :core_restricted_item_flag, type: Boolean
        property :hide_from_portal_flag, type: Boolean
        property :is_engineered_server_product, type: Boolean
        property :object_storage_item_flag, type: Boolean
        property :physical_core_capacity, type: String
        property :third_party_support_vendor, type: String
        property :total_physical_core_capacity, type: Integer
        property :total_physical_core_count, type: Integer
        property :total_processor_capacity, type: Integer
      end
    end
  end
end
