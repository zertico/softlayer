module Softlayer
  class Notification
    module Occurrence
      class Resource
        module Network
          module Application
            module Delivery
              class Controller < Softlayer::Notification::Occurrence::Resource
                autoload :LoadBalancer, 'softlayer/notification/occurrence/resource/network/application/delivery/controller/load_balancer'
                attr_accessor :hostname
                attr_accessor :private_ip
                attr_accessor :public_ip
                attr_accessor :resource_type

                class Representer < Softlayer::Notification::Occurrence::Resource::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :hostname, type: String
                  property :private_ip, type: String
                  property :public_ip, type: String
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
