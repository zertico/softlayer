module Softlayer
  module Container
    module Dns
      module Domain
        module Registration
          module Transfer
            class Information < Softlayer::Entity
              attr_accessor :reason
              attr_accessor :registrant_email
              attr_accessor :status
              attr_accessor :time_stamp
              attr_accessor :transferrable

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :reason, type: String
                property :registrant_email, type: String
                property :status, type: String
                property :time_stamp, type: DateTime
                property :transferrable, type: Integer
              end
            end
          end
        end
      end
    end
  end
end
