module Softlayer
  module Configuration
    module Storage
      module Group
        autoload :Order, 'softlayer/configuration/storage/group/order'
        autoload :Array, 'softlayer/configuration/storage/group/array'
        autoload :Template, 'softlayer/configuration/storage/group/template'
      end
    end
  end
end
