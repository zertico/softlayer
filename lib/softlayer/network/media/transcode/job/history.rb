module Softlayer
  class Network
    module Media
      module Transcode
        class Job
          class History < Softlayer::Model
            attr_accessor :create_date
            attr_accessor :public_notes
            attr_accessor :transcode_job_id
            attr_accessor :transcode_status_name

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :create_date, type: DateTime
              property :public_notes, type: String
              property :transcode_job_id, type: Integer
              property :transcode_status_name, type: String
            end
          end
        end
      end
    end
  end
end
