module Softlayer
  module Provisioning
    module Maintenance
      class Classification
        module Item
          class Category < Softlayer::Entity
            SERVICE = 'SoftLayer_Provisioning_Maintenance_Classification_Item_Category'
            attr_accessor :item_category_id
            attr_accessor :maintenance_classification_id
            attr_accessor :maintenance_classification

            def get_maintenance_classification
              request(:get_maintenance_classification, Softlayer::Provisioning::Maintenance::Classification)
            end

            def get_object
              request(:get_object, Softlayer::Provisioning::Maintenance::Classification::Item::Category)
            end

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :item_category_id, type: Integer
              property :maintenance_classification_id, type: Integer
            end
          end
        end
      end
    end
  end
end
