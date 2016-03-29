module Softlayer
  module Container
    module Network
      module Media
        class Information < Softlayer::Entity
          attr_accessor :audio_bit_rate
          attr_accessor :audio_channel_mode
          attr_accessor :audio_channels
          attr_accessor :audio_codec
          attr_accessor :audio_sample_rate
          attr_accessor :duration
          attr_accessor :error_message
          attr_accessor :file
          attr_accessor :file_format
          attr_accessor :file_size
          attr_accessor :frame_rate
          attr_accessor :size_x
          attr_accessor :size_y
          attr_accessor :total_frames
          attr_accessor :video_aspect_x
          attr_accessor :video_aspect_y
          attr_accessor :video_codec

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :audio_bit_rate, type: Integer
            property :audio_channel_mode, type: String
            property :audio_channels, type: Integer
            property :audio_codec, type: String
            property :audio_sample_rate, type: Integer
            property :duration, type: Float
            property :error_message, type: String
            property :file, type: String
            property :file_format, type: String
            property :file_size, type: BigDecimal
            property :frame_rate, type: Float
            property :size_x, type: Integer
            property :size_y, type: Integer
            property :total_frames, type: BigDecimal
            property :video_aspect_x, type: Float
            property :video_aspect_y, type: Integer
            property :video_codec, type: String
          end
        end
      end
    end
  end
end
