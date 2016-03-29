module Softlayer
  module Container
    module Network
      module ContentDelivery
        module Report
          class Usage < Softlayer::Entity
            attr_accessor :application_delivery_network
            attr_accessor :application_delivery_network_ssl
            attr_accessor :disk_space
            attr_accessor :end_date
            attr_accessor :flash
            attr_accessor :http
            attr_accessor :http_small
            attr_accessor :https
            attr_accessor :https_small
            attr_accessor :region
            attr_accessor :ssl_total
            attr_accessor :standard_total
            attr_accessor :start_date
            attr_accessor :windows_media

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :application_delivery_network, type: Float
              property :application_delivery_network_ssl, type: Float
              property :disk_space, type: Float
              property :end_date, type: DateTime
              property :flash, type: Float
              property :http, type: Float
              property :http_small, type: Float
              property :https, type: Float
              property :https_small, type: Float
              property :region, type: String
              property :ssl_total, type: Float
              property :standard_total, type: Float
              property :start_date, type: DateTime
              property :windows_media, type: Float
            end
          end
        end
      end
    end
  end
end
