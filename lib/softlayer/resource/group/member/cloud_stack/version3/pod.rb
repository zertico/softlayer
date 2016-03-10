module Softlayer
  module Resource
    class Group
      class Member
        module CloudStack
          module Version3
            class Pod < Softlayer::Resource::Group::Member
              attr_accessor :resource

              class Representer < Softlayer::Resource::Group::Member::Representer
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
