module Softlayer
  module Container
    module Virtual
      module Guest
        class Configuration < Softlayer::Model
          autoload :Option, 'softlayer/container/virtual/guest/configuration/option'
          attr_accessor :block_devices
          attr_accessor :datacenters
          attr_accessor :memory
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
end
