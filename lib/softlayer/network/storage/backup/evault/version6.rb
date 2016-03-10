module Softlayer
  class Network
    class Storage
      class Backup
        class Evault
          class Version6 < Softlayer::Network::Storage::Backup::Evault
            attr_accessor :agent_status_count
            attr_accessor :backup_job_detail_count
            attr_accessor :plugin_billing_item_count
            attr_accessor :restore_job_detail_count
            attr_accessor :task_count
            attr_accessor :agent_statuses
            attr_accessor :backup_job_details
            attr_accessor :plugin_billing_items
            attr_accessor :restore_job_details
            attr_accessor :software_component
            attr_accessor :tasks

            class Representer < Softlayer::Network::Storage::Backup::Evault::Representer
              include Representable::Hash
              include Representable::Coercion
              property :agent_status_count, type: BigDecimal
              property :backup_job_detail_count, type: BigDecimal
              property :plugin_billing_item_count, type: BigDecimal
              property :restore_job_detail_count, type: BigDecimal
              property :task_count, type: BigDecimal
            end
          end
        end
      end
    end
  end
end
