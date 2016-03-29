module Softlayer
  class Network
    module Media
      module Transcode
        class Account < Softlayer::Entity
          SERVICE = 'SoftLayer_Network_Media_Transcode_Account'
          attr_accessor :account_id
          attr_accessor :create_date
          attr_accessor :id
          attr_accessor :modify_date
          attr_accessor :transcode_job_count
          attr_accessor :account
          attr_accessor :transcode_jobs

          def self.create_transcode_account
            request(:create_transcode_account, Boolean)
          end

          def create_transcode_job(new_job = nil)
            message = {new_job: new_job}
            request(:create_transcode_job, Boolean, message)
          end

          def get_account
            request(:get_account, Softlayer::Account)
          end

          def get_directory_information(directory_name = nil, extension_filter = nil)
            message = {directory_name: directory_name, extension_filter: extension_filter}
            request(:get_directory_information, Array[Softlayer::Container::Network::Directory::Listing], message)
          end

          def get_file_detail(source = nil)
            message = {source: source}
            request(:get_file_detail, Softlayer::Container::Network::Media::Information, message)
          end

          def get_ftp_attributes
            request(:get_ftp_attributes, Softlayer::Container::Network::Authentication::Data)
          end

          def get_object
            request(:get_object, Softlayer::Network::Media::Transcode::Account)
          end

          def get_preset_detail(guid = nil)
            message = {guid: guid}
            request(:get_preset_detail, Array[Softlayer::Container::Network::Media::Transcode::Preset::Element], message)
          end

          def get_presets
            request(:get_presets, Array[Softlayer::Container::Network::Media::Transcode::Preset])
          end

          def get_transcode_jobs
            request(:get_transcode_jobs, Array[Softlayer::Network::Media::Transcode::Job])
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :account_id, type: Integer
            property :create_date, type: DateTime
            property :id, type: Integer
            property :modify_date, type: DateTime
            property :transcode_job_count, type: BigDecimal
          end
        end
      end
    end
  end
end
