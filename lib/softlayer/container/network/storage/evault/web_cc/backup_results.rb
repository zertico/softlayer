module Softlayer
  module Container
    module Network
      module Storage
        module Evault
          module WebCc
            class BackupResults < Softlayer::Entity
              attr_accessor :begin_time
              attr_accessor :conflict
              attr_accessor :end_time
              attr_accessor :failed
              attr_accessor :success

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :begin_time, type: DateTime
                property :conflict, type: String
                property :end_time, type: DateTime
                property :failed, type: String
                property :success, type: String
              end
            end
          end
        end
      end
    end
  end
end
