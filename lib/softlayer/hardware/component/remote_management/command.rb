module Softlayer
  class Hardware
    class Component
      class RemoteManagement
        class Command < Softlayer::Model
          autoload :Request, 'softlayer/hardware/component/remote_management/command/request'
          attr_accessor :key_name
          attr_accessor :request_count
          attr_accessor :requests

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :key_name, type: String
            property :request_count, type: BigDecimal
          end
        end
      end
    end
  end
end
