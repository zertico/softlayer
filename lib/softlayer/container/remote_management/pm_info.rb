module Softlayer
  module Container
    module RemoteManagement
      class PmInfo < Softlayer::Model
        attr_accessor :pm_info_id
        attr_accessor :pm_info_reading

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :pm_info_id, type: String
          property :pm_info_reading, type: String
        end
      end
    end
  end
end
