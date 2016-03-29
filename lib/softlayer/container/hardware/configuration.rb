module Softlayer
  module Container
    module Hardware
      class Configuration < Softlayer::Entity
        autoload :Option, 'softlayer/container/hardware/configuration/option'
        attr_accessor :datacenters
        attr_accessor :fixed_configuration_presets
        attr_accessor :hard_drives
        attr_accessor :network_components
        attr_accessor :operating_systems
        attr_accessor :processors

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
