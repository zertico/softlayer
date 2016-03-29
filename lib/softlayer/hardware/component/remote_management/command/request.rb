module Softlayer
  class Hardware
    class Component
      class RemoteManagement
        class Command
          class Request < Softlayer::Entity
            attr_accessor :create_date
            attr_accessor :hardware_id
            attr_accessor :modify_date
            attr_accessor :processed
            attr_accessor :hardware
            attr_accessor :network_component
            attr_accessor :remote_management_command
            attr_accessor :user

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :create_date, type: DateTime
              property :hardware_id, type: Integer
              property :modify_date, type: DateTime
              property :processed, type: Boolean
            end
          end
        end
      end
    end
  end
end
