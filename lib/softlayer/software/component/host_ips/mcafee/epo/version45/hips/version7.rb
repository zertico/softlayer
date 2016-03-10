module Softlayer
  module Software
    class Component
      class HostIps
        class Mcafee
          module Epo
            module Version45
              class Hips
                class Version7 < Softlayer::Software::Component::HostIps::Mcafee::Epo::Version45::Hips

                  class Representer < Softlayer::Software::Component::HostIps::Mcafee::Epo::Version45::Hips::Representer
                    include Representable::Hash
                    include Representable::Coercion
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
