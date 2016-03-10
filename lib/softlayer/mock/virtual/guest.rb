module Softlayer
  class Mock
    class Virtual
      class Guest <  Softlayer::Mock
        def self.get_create_object_options
          $database["Softlayer::Container::Virtual::Guest::Configuration"]['configuration1']
        end
      end
    end
  end
end
