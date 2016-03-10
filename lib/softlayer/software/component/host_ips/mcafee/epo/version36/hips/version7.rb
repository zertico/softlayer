module Softlayer
  module Software
    class Component
      class HostIps
        class Mcafee
          module Epo
            module Version36
              class Hips
                class Version7 < Softlayer::Software::Component::HostIps::Mcafee::Epo::Version36::Hips
                  attr_accessor :blocked_application_event_count
                  attr_accessor :ips_event_count
                  attr_accessor :blocked_application_events
                  attr_accessor :ips_events

                  class Representer < Softlayer::Software::Component::HostIps::Mcafee::Epo::Version36::Hips::Representer
                    include Representable::Hash
                    include Representable::Coercion
                    property :blocked_application_event_count, type: BigDecimal
                    property :ips_event_count, type: BigDecimal
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
