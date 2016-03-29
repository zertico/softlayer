module Softlayer
  module Container
    module Network
      module Storage
        module Evault
          module WebCc
            class JobDetails < Softlayer::Entity
              attr_accessor :bytes_used
              attr_accessor :description
              attr_accessor :hardware_id
              attr_accessor :last_run_date
              attr_accessor :name
              attr_accessor :original_size
              attr_accessor :percentage_of_total_usage
              attr_accessor :result
              attr_accessor :virtual_guest_id

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :bytes_used, type: BigDecimal
                property :description, type: String
                property :hardware_id, type: Integer
                property :last_run_date, type: DateTime
                property :name, type: String
                property :original_size, type: BigDecimal
                property :percentage_of_total_usage, type: Integer
                property :result, type: String
                property :virtual_guest_id, type: Integer
              end
            end
          end
        end
      end
    end
  end
end
