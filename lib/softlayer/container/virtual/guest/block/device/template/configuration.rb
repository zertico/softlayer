module Softlayer
  module Container
    module Virtual
      module Guest
        module Block
          module Device
            module Template
              class Configuration < Softlayer::Entity
                attr_accessor :name
                attr_accessor :note
                attr_accessor :operating_system_reference_code
                attr_accessor :uri

                class Representer < Softlayer::Entity::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :name, type: String
                  property :note, type: String
                  property :operating_system_reference_code, type: String
                  property :uri, type: String
                end
              end
            end
          end
        end
      end
    end
  end
end
