module Softlayer
  module Container
    module Virtual
      module Guest
        class Configuration < Softlayer::Entity
          autoload :Option, 'softlayer/container/virtual/guest/configuration/option'
          attr_accessor :block_devices
          attr_accessor :datacenters
          attr_accessor :memory
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
end
