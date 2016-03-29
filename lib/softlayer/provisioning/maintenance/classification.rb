module Softlayer
  module Provisioning
    module Maintenance
      class Classification < Softlayer::Entity
        SERVICE = 'SoftLayer_Provisioning_Maintenance_Classification'
        autoload :Item, 'softlayer/provisioning/maintenance/classification/item'
        attr_accessor :id
        attr_accessor :slots
        attr_accessor :type
        attr_accessor :item_category_count
        attr_accessor :item_categories

        def get_item_categories
          request(:get_item_categories, Array[Softlayer::Provisioning::Maintenance::Classification::Item::Category])
        end

        def self.get_maintenance_classification(maintenance_classification_id = nil)
          message = {maintenance_classification_id: maintenance_classification_id}
          request(:get_maintenance_classification, Array[Softlayer::Provisioning::Maintenance::Classification], message)
        end

        def self.get_maintenance_classifications_by_item_category
          request(:get_maintenance_classifications_by_item_category, Array[Softlayer::Provisioning::Maintenance::Classification::Item::Category])
        end

        def get_object
          request(:get_object, Softlayer::Provisioning::Maintenance::Classification)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :id, type: Integer
          property :slots, type: Integer
          property :type, type: String
          property :item_category_count, type: BigDecimal
        end
      end
    end
  end
end
