module Softlayer
  module Container
    module Network
      module ContentDelivery
        module Bandwidth
          class Summary < Softlayer::Entity
            autoload :Detail, 'softlayer/container/network/content_delivery/bandwidth/summary/detail'
            attr_accessor :cdn_account_id
            attr_accessor :end_date_time
            attr_accessor :file_name
            attr_accessor :media_type
            attr_accessor :start_date_time
            attr_accessor :usage
            attr_accessor :usage_units

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :cdn_account_id, type: Integer
              property :end_date_time, type: DateTime
              property :file_name, type: String
              property :media_type, type: String
              property :start_date_time, type: DateTime
              property :usage, type: Float
              property :usage_units, type: String
            end
          end
        end
      end
    end
  end
end
