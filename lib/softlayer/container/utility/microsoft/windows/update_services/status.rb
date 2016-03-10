module Softlayer
  module Container
    module Utility
      module Microsoft
        module Windows
          module UpdateServices
            class Status < Softlayer::Model
              attr_accessor :last_reboot_date
              attr_accessor :last_status_date
              attr_accessor :last_sync_date
              attr_accessor :private_ip_address
              attr_accessor :sync_status
              attr_accessor :update_status

              class Representer < Representable::Decorator
                include Representable::Hash
                include Representable::Coercion
                property :last_reboot_date, type: DateTime
                property :last_status_date, type: DateTime
                property :last_sync_date, type: DateTime
                property :private_ip_address, type: String
                property :sync_status, type: String
                property :update_status, type: String
              end
            end
          end
        end
      end
    end
  end
end
