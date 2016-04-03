module Softlayer
  class Hardware
    class Component
      class Partition
        class OperatingSystem < Softlayer::Entity
          SERVICE = 'SoftLayer_Hardware_Component_Partition_OperatingSystem'
          attr_accessor :description
          attr_accessor :id
          attr_accessor :notes
          attr_accessor :partition_template_count
          attr_accessor :partition_templates

          def self.get_all_objects
            request(:get_all_objects, Array[Softlayer::Hardware::Component::Partition::OperatingSystem])
          end

          # description
          def self.get_by_description(message)
            request(:get_by_description, Softlayer::Hardware::Component::Partition::OperatingSystem, message)
          end

          def get_object
            request(:get_object, Softlayer::Hardware::Component::Partition::OperatingSystem)
          end

          def get_partition_templates
            request(:get_partition_templates, Array[Softlayer::Hardware::Component::Partition::Template])
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :description, type: String
            property :id, type: Integer
            property :notes, type: String
            property :partition_template_count, type: BigDecimal
          end
        end
      end
    end
  end
end
