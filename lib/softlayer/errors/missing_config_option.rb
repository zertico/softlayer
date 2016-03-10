module Softlayer
  module Errors
    class MissingConfigOption < SoftlayerError
      def initialize(name)
        super(
          compose_message(
            'missing_config_option',
            name: name
          )
        )
      end
    end
  end
end
