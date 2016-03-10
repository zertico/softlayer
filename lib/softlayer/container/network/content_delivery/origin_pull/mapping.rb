module Softlayer
  module Container
    module Network
      module ContentDelivery
        module OriginPull
          class Mapping < Softlayer::Model
            attr_accessor :cname
            attr_accessor :id
            attr_accessor :is_secure_content
            attr_accessor :media_type
            attr_accessor :origin_url

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :cname, type: String
              property :id, type: String
              property :is_secure_content, type: Boolean
              property :media_type, type: String
              property :origin_url, type: String
            end
          end
        end
      end
    end
  end
end
