module Softlayer
  class Network
    class Monitor
      module Version1
        module Query
          class Host
            class Stratum < Softlayer::Entity
              SERVICE = 'SoftLayer_Network_Monitor_Version1_Query_Host_Stratum'
              attr_accessor :monitor_level
              attr_accessor :response_level
              attr_accessor :hardware

              def self.get_all_query_types
                request(:get_all_query_types, Array[Softlayer::Network::Monitor::Version1::Query::Type])
              end

              def self.get_all_response_types
                request(:get_all_response_types, Array[Softlayer::Network::Monitor::Version1::Query::ResponseType])
              end

              def get_hardware
                request(:get_hardware, Softlayer::Hardware)
              end

              def get_object
                request(:get_object, Softlayer::Network::Monitor::Version1::Query::Host::Stratum)
              end

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :monitor_level, type: Integer
                property :response_level, type: Integer
              end
            end
          end
        end
      end
    end
  end
end
