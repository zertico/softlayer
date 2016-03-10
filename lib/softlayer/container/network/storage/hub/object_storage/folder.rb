module Softlayer
  module Container
    module Network
      module Storage
        module Hub
          module ObjectStorage
            class Folder < Softlayer::Model
              attr_accessor :bytes
              attr_accessor :count
              attr_accessor :name

              class Representer < Representable::Decorator
                include Representable::Hash
                include Representable::Coercion
                property :bytes, type: BigDecimal
                property :count, type: BigDecimal
                property :name, type: String
              end
            end
          end
        end
      end
    end
  end
end
