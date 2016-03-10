module Softlayer
  module Sales
    module Presale
      class Event < Softlayer::Model
        SERVICE = 'SoftLayer_Sales_Presale_Event'
        attr_accessor :description
        attr_accessor :end_date
        attr_accessor :id
        attr_accessor :item_id
        attr_accessor :location_id
        attr_accessor :start_date
        attr_accessor :order_count
        attr_accessor :active_flag
        attr_accessor :expired_flag
        attr_accessor :item
        attr_accessor :location
        attr_accessor :orders

        def get_active_flag
          request(:get_active_flag, Boolean)
        end

        def self.get_all_objects
          request(:get_all_objects, Array[Softlayer::Sales::Presale::Event])
        end

        def get_expired_flag
          request(:get_expired_flag, Boolean)
        end

        def get_item
          request(:get_item, Softlayer::Product::Item)
        end

        def get_location
          request(:get_location, Softlayer::Location)
        end

        def get_object
          request(:get_object, Softlayer::Sales::Presale::Event)
        end

        def get_orders
          request(:get_orders, Array[Softlayer::Billing::Order])
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :description, type: String
          property :end_date, type: DateTime
          property :id, type: Integer
          property :item_id, type: Integer
          property :location_id, type: Integer
          property :start_date, type: DateTime
          property :order_count, type: BigDecimal
          property :active_flag, type: Boolean
          property :expired_flag, type: Boolean
        end
      end
    end
  end
end
