module Softlayer
  module Container
    module Hardware
      class Configuration < Softlayer::Model
        autoload :Option, 'softlayer/container/hardware/configuration/option'
        attr_accessor :datacenters
        attr_accessor :fixed_configuration_presets
        attr_accessor :hard_drives
        attr_accessor :network_components
        attr_accessor :operating_systems
        attr_accessor :processors

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
