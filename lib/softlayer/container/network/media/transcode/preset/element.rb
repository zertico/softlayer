module Softlayer
  module Container
    module Network
      module Media
        module Transcode
          class Preset
            class Element < Softlayer::Model
              autoload :Option, 'softlayer/container/network/media/transcode/preset/element/option'
              attr_accessor :additional_elements
              attr_accessor :default_value
              attr_accessor :description
              attr_accessor :enabled
              attr_accessor :extended_description
              attr_accessor :hidden
              attr_accessor :maximum_value
              attr_accessor :minimum_value
              attr_accessor :name
              attr_accessor :parent_name
              attr_accessor :type

              class Representer < Representable::Decorator
                include Representable::Hash
                include Representable::Coercion
                property :default_value, type: String
                property :description, type: String
                property :enabled, type: Boolean
                property :extended_description, type: String
                property :hidden, type: Boolean
                property :maximum_value, type: Integer
                property :minimum_value, type: Integer
                property :name, type: String
                property :parent_name, type: String
                property :type, type: String
              end
            end
          end
        end
      end
    end
  end
end
