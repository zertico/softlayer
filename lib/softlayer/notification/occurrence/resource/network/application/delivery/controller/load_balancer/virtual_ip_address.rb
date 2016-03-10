module Softlayer
  class Notification
    module Occurrence
      class Resource
        module Network
          module Application
            module Delivery
              class Controller
                module LoadBalancer
                  class VirtualIpAddress < Softlayer::Notification::Occurrence::Resource
                    attr_accessor :hostname
                    attr_accessor :public_ip
                    attr_accessor :resource_type

                    class Representer < Softlayer::Notification::Occurrence::Resource::Representer
                      include Representable::Hash
                      include Representable::Coercion
                      property :hostname, type: String
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
  end
end
