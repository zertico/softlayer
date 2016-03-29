module Softlayer
  module Product
    class Order < Softlayer::Entity
      SERVICE = 'SoftLayer_Product_Order'

      def self.check_item_availability(item_prices = nil, account_id = nil, availability_type_key_names = nil)
        message = {item_prices: item_prices, account_id: account_id, availability_type_key_names: availability_type_key_names}
        request(:check_item_availability, Boolean, message)
      end

      def self.check_item_availability_for_image_template(image_template_id = nil, account_id = nil, package_id = nil, availability_type_key_names = nil)
        message = {image_template_id: image_template_id, account_id: account_id, package_id: package_id, availability_type_key_names: availability_type_key_names}
        request(:check_item_availability_for_image_template, Boolean, message)
      end

      def self.check_item_conflicts(item_prices = nil)
        message = {item_prices: item_prices}
        request(:check_item_conflicts, Boolean, message)
      end

      def self.get_external_payment_authorization_receipt(token = nil, payer_id = nil)
        message = {token: token, payer_id: payer_id}
        request(:get_external_payment_authorization_receipt, Softlayer::Container::Product::Order::Receipt, message)
      end

      def self.get_networks(location_id = nil, package_id = nil, account_id = nil)
        message = {location_id: location_id, package_id: package_id, account_id: account_id}
        request(:get_networks, Array[Softlayer::Container::Product::Order::Network], message)
      end

      def self.get_reseller_order(order_container = nil)
        message = {order_container: order_container}
        request(:get_reseller_order, Softlayer::Container::Product::Order, message)
      end

      def self.get_tax_calculation_result(order_hash = nil)
        message = {order_hash: order_hash}
        request(:get_tax_calculation_result, Softlayer::Container::Tax::Cache, message)
      end

      def self.get_vlans(location_id = nil, package_id = nil, selected_items = nil, vlan_ids = nil, subnet_ids = nil, account_id = nil)
        message = {location_id: location_id, package_id: package_id, selected_items: selected_items, vlan_ids: vlan_ids, subnet_ids: subnet_ids, account_id: account_id}
        request(:get_vlans, Softlayer::Container::Product::Order::Network::Vlans, message)
      end

      def self.place_order(order_data = nil, save_as_quote = nil)
        message = {order_data: order_data, save_as_quote: save_as_quote}
        request(:place_order, Softlayer::Container::Product::Order::Receipt, message)
      end

      def self.place_quote(order_data = nil)
        message = {order_data: order_data}
        request(:place_quote, Softlayer::Container::Product::Order::Receipt, message)
      end

      def self.process_external_payment_authorization(token = nil, payer_id = nil)
        message = {token: token, payer_id: payer_id}
        request(:process_external_payment_authorization, Softlayer::Container::Product::Order, message)
      end

      def self.required_items(item_prices = nil)
        message = {item_prices: item_prices}
        request(:required_items, Array[Softlayer::Product::Item], message)
      end

      def self.verify_order(order_data = nil)
        message = {order_data: order_data}
        request(:verify_order, Softlayer::Container::Product::Order, message)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
      end
    end
  end
end
