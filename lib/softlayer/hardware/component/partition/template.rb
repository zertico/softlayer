module Softlayer
  class Hardware
    class Component
      class Partition
        class Template < Softlayer::Model
          SERVICE = 'SoftLayer_Hardware_Component_Partition_Template'
          autoload :Partition, 'softlayer/hardware/component/partition/template/partition'
          attr_accessor :account_id
          attr_accessor :description
          attr_accessor :id
          attr_accessor :partition_operating_system_id
          attr_accessor :status_code
          attr_accessor :template_type
          attr_accessor :data_count
          attr_accessor :partition_template_partition_count
          attr_accessor :account
          attr_accessor :data
          attr_accessor :expire_date
          attr_accessor :partition_operating_system
          attr_accessor :partition_template_partition

          def get_account
            request(:get_account, Softlayer::Account)
          end

          def get_data
            request(:get_data, Array[Softlayer::Hardware::Component::Partition::Template::Partition])
          end

          def get_expire_date
            request(:get_expire_date, String)
          end

          def get_object
            request(:get_object, Softlayer::Hardware::Component::Partition::Template)
          end

          def get_partition_operating_system
            request(:get_partition_operating_system, Softlayer::Hardware::Component::Partition::OperatingSystem)
          end

          def get_partition_template_partition
            request(:get_partition_template_partition, Array[Softlayer::Hardware::Component::Partition::Template::Partition])
          end

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :account_id, type: Integer
            property :description, type: String
            property :id, type: Integer
            property :partition_operating_system_id, type: Integer
            property :status_code, type: String
            property :template_type, type: String
            property :data_count, type: BigDecimal
            property :partition_template_partition_count, type: BigDecimal
            property :expire_date, type: String
          end
        end
      end
    end
  end
end
