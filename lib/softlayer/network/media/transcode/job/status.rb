module Softlayer
  class Network
    module Media
      module Transcode
        class Job
          class Status < Softlayer::Model
            SERVICE = 'SoftLayer_Network_Media_Transcode_Job_Status'
            attr_accessor :description
            attr_accessor :id
            attr_accessor :name

            def self.get_all_statuses
              request(:get_all_statuses, Array[Softlayer::Network::Media::Transcode::Job::Status])
            end

            def get_object
              request(:get_object, Softlayer::Network::Media::Transcode::Job::Status)
            end

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :description, type: String
              property :id, type: Integer
              property :name, type: String
            end
          end
        end
      end
    end
  end
end
