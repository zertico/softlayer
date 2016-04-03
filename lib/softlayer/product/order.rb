module Softlayer
  module Product
    class Order < Softlayer::Entity
      SERVICE = 'SoftLayer_Product_Order'

      # item_prices
      # account_id
      # availability_type_key_names
      def self.check_item_availability(message)
        request(:check_item_availability, Boolean, message)
      end

      # image_template_id
      # account_id
      # package_id
      # availability_type_key_names
      def self.check_item_availability_for_image_template(message)
        request(:check_item_availability_for_image_template, Boolean, message)
      end

      # item_prices
      def self.check_item_conflicts(message)
        request(:check_item_conflicts, Boolean, message)
      end

      # token
      # payer_id
      def self.get_external_payment_authorization_receipt(message)
        request(:get_external_payment_authorization_receipt, Softlayer::Container::Product::Order::Receipt, message)
      end

      # location_id
      # package_id
      # account_id
      def self.get_networks(message)
        request(:get_networks, Array[Softlayer::Container::Product::Order::Network], message)
      end

      # order_container
      def self.get_reseller_order(message)
        request(:get_reseller_order, Softlayer::Container::Product::Order, message)
      end

      # order_hash
      def self.get_tax_calculation_result(message)
        request(:get_tax_calculation_result, Softlayer::Container::Tax::Cache, message)
      end

      # location_id
      # package_id
      # selected_items
      # vlan_ids
      # subnet_ids
      # account_id
      def self.get_vlans(message)
        request(:get_vlans, Softlayer::Container::Product::Order::Network::Vlans, message)
      end

      # order_data
      # save_as_quote
      def self.place_order(message)
        request(:place_order, Softlayer::Container::Product::Order::Receipt, message)
      end

      # order_data
      def self.place_quote(message)
        request(:place_quote, Softlayer::Container::Product::Order::Receipt, message)
      end

      # token
      # payer_id
      def self.process_external_payment_authorization(message)
        request(:process_external_payment_authorization, Softlayer::Container::Product::Order, message)
      end

      # item_prices
      def self.required_items(message)
        request(:required_items, Array[Softlayer::Product::Item], message)
      end

      # order_data
      def self.verify_order(message)
        request(:verify_order, Softlayer::Container::Product::Order, message)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
      end
    end
  end
end
