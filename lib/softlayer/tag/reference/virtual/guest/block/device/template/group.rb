module Softlayer
  class Tag
    class Reference
      module Virtual
        class Guest
          module Block
            module Device
              module Template
                class Group < Softlayer::Tag::Reference
                  attr_accessor :resource

                  class Representer < Softlayer::Tag::Reference::Representer
                    include Representable::Hash
                    include Representable::Coercion
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
