module Softlayer
  class Network
    module Media
      module Transcode
        class Job < Softlayer::Entity
          SERVICE = 'SoftLayer_Network_Media_Transcode_Job'
          autoload :History, 'softlayer/network/media/transcode/job/history'
          autoload :Status, 'softlayer/network/media/transcode/job/status'
          attr_accessor :auto_delete_duration
          attr_accessor :byte_in
          attr_accessor :create_date
          attr_accessor :id
          attr_accessor :input_file
          attr_accessor :modify_date
          attr_accessor :name
          attr_accessor :output_file
          attr_accessor :transcode_account_id
          attr_accessor :transcode_job_guid
          attr_accessor :transcode_preset_guid
          attr_accessor :transcode_preset_name
          attr_accessor :transcode_status_id
          attr_accessor :user_id
          attr_accessor :watermark
          attr_accessor :history_count
          attr_accessor :history
          attr_accessor :transcode_account
          attr_accessor :transcode_status
          attr_accessor :transcode_status_name
          attr_accessor :user

          def self.create_object(template_object = nil)
            message = {template_object: template_object}
            request(:create_object, Softlayer::Network::Media::Transcode::Job, message)
          end

          def get_history
            request(:get_history, Array[Softlayer::Network::Media::Transcode::Job::History])
          end

          def get_object
            request(:get_object, Softlayer::Network::Media::Transcode::Job)
          end

          def get_transcode_account
            request(:get_transcode_account, Softlayer::Network::Media::Transcode::Account)
          end

          def get_transcode_status
            request(:get_transcode_status, Softlayer::Network::Media::Transcode::Job::Status)
          end

          def get_transcode_status_name
            request(:get_transcode_status_name, String)
          end

          def get_user
            request(:get_user, Softlayer::User::Customer)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :auto_delete_duration, type: Integer
            property :byte_in, type: Integer
            property :create_date, type: DateTime
            property :id, type: Integer
            property :input_file, type: String
            property :modify_date, type: DateTime
            property :name, type: String
            property :output_file, type: String
            property :transcode_account_id, type: Integer
            property :transcode_job_guid, type: String
            property :transcode_preset_guid, type: String
            property :transcode_preset_name, type: String
            property :transcode_status_id, type: Integer
            property :user_id, type: Integer
            property :history_count, type: BigDecimal
            property :transcode_status_name, type: String
          end
        end
      end
    end
  end
end
