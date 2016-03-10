module Softlayer
  class Notification
    module Occurrence
      class Resource
        module Network
          module Storage
            module Iscsi
              class NetApp < Softlayer::Notification::Occurrence::Resource
                attr_accessor :hostname
                attr_accessor :private_ip
                attr_accessor :resource_type

                class Representer < Softlayer::Notification::Occurrence::Resource::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :hostname, type: String
                  property :private_ip, type: String
                  property :resource_type, type: String
                end
              end
            end
          end
        end
      end
    end
  end
end
