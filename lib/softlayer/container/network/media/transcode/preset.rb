module Softlayer
  module Container
    module Network
      module Media
        module Transcode
          class Preset < Softlayer::Entity
            autoload :Element, 'softlayer/container/network/media/transcode/preset/element'
            attr_accessor :guid
            attr_accessor :category
            attr_accessor :description
            attr_accessor :name

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :guid, type: String
              property :category, type: String
              property :description, type: String
              property :name, type: String
            end
          end
        end
      end
    end
  end
end
