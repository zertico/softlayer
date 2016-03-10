module Softlayer
  module Configuration
    module Storage
      autoload :Filesystem, 'softlayer/configuration/storage/filesystem'
      autoload :Group, 'softlayer/configuration/storage/group'
    end
  end
end
